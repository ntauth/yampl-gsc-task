/**
 * @author Ayoub Chouak (ntauth)
 * @file   ipc_server.hpp
 * @brief  Yampl IPC Server
 *
 */

#ifndef __YAMPL_IPC_SERVER_HPP
#define __YAMPL_IPC_SERVER_HPP

#include <asio.hpp>

#include <string>
#include <memory>
#include <vector>
#include <mutex>

namespace yampl
{
    namespace ipc
    {
        /**
         * @brief Class representing a basic TLV (Type + Length + Value) message
         */
        class ipc_server_message
        {
            public:
                enum class type : uint8_t
                {
                    /********* Data */
                    pull_task_ack = 0x1, //!< Acknowledges a `pull_task` request by dispatching a task to execute

                    /********* Control */
                    task_pipeline_exhaust = pull_task_ack << 1, //!< The pipeline is empty (tasks have all been carried out)
                    ipc_client_kill //!< Remotely instruct the IPC client to abort
                };

            protected:
                type type_;
                std::vector<uint8_t> payload_;
                uint32_t payload_length_;

            public:
                /**
                 *
                 * @param type Message type
                 */
                explicit ipc_server_message(type type)
                    : type_(type)
                    , payload_length_(0) {

                }


                /**
                 *
                 * @param type Message type
                 * @param payload Message payload
                 */
                explicit ipc_server_message(type type, std::vector<uint8_t> const& payload)
                    : type_(type)
                    , payload_length_(payload.size())
                    , payload_(payload) {

                };

                /**
                 * @brief Constructor for move semantics
                 *
                 * @param type Message type
                 * @param payload Message payload
                 */
                explicit ipc_server_message(type type, std::vector<uint8_t>&& payload)
                    : type_(type)
                    , payload_length_(payload.size())
                    , payload_(std::move(payload)) {

                }
        };

        /**
         * @brief Class for managing the connection to the IPC client over TCP
         *
         */
        class ipc_client_manager : public std::enable_shared_from_this<ipc_client_manager>
        {
            protected:
                asio::ip::tcp::socket datagram_sock_; //!< Datagram socket associated to this client

                explicit ipc_client_manager(asio::io_service& io_svc)
                    : datagram_sock_(io_svc)
                {
                }

                /**
                 * @brief Callback for when the write operation terminates
                 *
                 * @param err The error code, if any
                 * @param cb_data The count of bytes written to the socket
                 */
                void handle_write_after(asio::error_code const& err, uint32_t cb_data);

            public:
                using smart_ref = std::shared_ptr<ipc_client_manager>;

                /**
                 * @brief Instantiates a ref-counted `ipc_client_manager` object and returns it to the caller
                 *
                 * @param io_svc A reference to the io_service instance
                 * @return A reference counted pointer to a `tcp_client_manager` instance
                 */
                static smart_ref get(asio::io_service& io_svc);

                /**
                 * @brief Getter for `datagram_sock`
                 * @return A reference to the socket
                 */
                asio::ip::tcp::socket& sock();

                /**
                 * @brief Callback for when the client is accepted. The callback greets the client with a `pull_task_ack` message
                 */
                void accept_after();
        };

        /**
         * @brief Main class for accepting incoming client connections asynchronously
         *
         */
        class ipc_server
        {
            protected:
                /************** ASIO Data */
                asio::ip::tcp::acceptor tcp_watchdog_;  //!< Connection acceptor

                /************** Clients Data */
                std::vector<ipc_client_manager::smart_ref> clients_; //!< Currently connected clients
                mutable std::mutex clients_mutex_;                  //!< Mutex for the clients queue

                /************** Task Data */
                std::vector<uint32_t> task_pipeline_;     //!< Task pipeline
                mutable std::mutex task_pipeline_mutex_; //!< Mutex for the task pipeline

                /**
                 * @brief Begins the client connection acceptance
                 */
                void accept_begin();

                /**
                 * @brief Handles an inbound client connection request
                 * @param ipc_mgr The newly created `ipc_client_manager` instance
                 * @param err The error code, if any
                 */
                void handle_accept(ipc_client_manager::smart_ref ipc_mgr, asio::error_code const& err);
            public:
                explicit ipc_server(asio::io_service& io_svc)
                    : tcp_watchdog_(io_svc) {
                    accept_begin();
                }
        };
    }
}

#endif // __YAMPL_IPC_SERVER_HPP