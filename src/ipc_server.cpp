/**
 * @author Ayoub Chouak (ntauth)
 * @file   ipc_server.cpp
 * @brief  Yampl IPC Server
 *
 */
#include <ipc_server.hpp>

#include <iostream>
#include <string>
#include <functional>

using namespace yampl;
using namespace yampl::ipc;

using namespace std;
using namespace asio;

void ipc_server::accept_begin()
{
    // Create a smart reference to a new IPC client manager
    ipc_client_manager::smart_ref ref = ipc_client_manager::get(tcp_watchdog_.get_io_service());

    // Accept the next incoming connection
    tcp_watchdog_.async_accept(ref->sock(), std::bind(&ipc_server::handle_accept, this, ref, std::placeholders::_1));
}

void ipc_server::handle_accept(ipc_client_manager::smart_ref ipc_mgr, asio::error_code const &err)
{
    // Acquire the mutex on the clients queue
    lock_guard<mutex> mtx_guard(clients_mutex_);

    // Call the client callback if connection went fine
    if (!err)
    {
        clients_.push_back(ipc_mgr);
        ipc_mgr->accept_after();
    }

    // Start handling the next connections
    accept_begin();
}

void ipc_client_manager::handle_write_after(asio::error_code const &err, uint32_t cb_data) {
    // @todo: Implement
}

ipc_client_manager::smart_ref ipc_client_manager::get(asio::io_service &io_svc)
{
    return smart_ref(new ipc_client_manager(io_svc));
}

asio::ip::tcp::socket& ipc_client_manager::sock() {
    return datagram_sock_;
}

void ipc_client_manager::accept_after()
{
    ipc_server_message msg(ipc_server_message::type::pull_task_ack, { 0 });

}