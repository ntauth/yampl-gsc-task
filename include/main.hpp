/**
 * @author Ayoub Chouak (ntauth)
 * @file   main.hpp
 * @brief  Entry point for Yampl IPC/ASIO
 *
 */

#ifndef YAMPL_MAIN_HPP
#define YAMPL_MAIN_HPP

#include <ipc_client.hpp>
#include <ipc_server.hpp>

#include <map>
#include <string>

namespace yampl
{
    const std::map<std::string, uint32_t> asio_error_signatures = {
            { "basic_errors", 0x1 },
            { "netdb_errors", 0x2 },
            { "addrinfo_errors", 0x3 },
            { "misc_errors", 0x4 }
    };

    /**
     * @brief Helper function for converting asio errors to a packed `uint32_t`
     * @param err
     * @return
     */
    inline uint32_t asio_err_to_uint32(asio::error_code const& err) {
        return (asio_error_signatures.at(err.category().name()) << 30) | (err.value() << 1);
    }
}

#endif // YAMPL__MAIN_HPP
