/**
 * @author Ayoub Chouak (ntauth)
 * @file   main.cpp
 * @brief  Entry point for Yampl IPC/ASIO
 *
 */

#include <main.hpp>

#include <iostream>
#include <chrono>
#include <exception>

using namespace yampl;
using namespace yampl::ipc;

/**
 * @brief  entry point for Yampl IPC client/server
 * @return status code
 *
 */
int main(int argc, char** argv, char** env)
{
    int status = 0;
    asio::io_service io_svc;

    /**
     * @todo: Instantiate `ipc_server` or `ipc_client` depending on argv
     */
    try
    {
        ipc_server ipc(io_svc);
        io_svc.run();
    }
    catch (asio::system_error& ex)
    {
        std::cerr << "[!] Exception thrown - " << ex.what() << std::endl;
        asio::error_code err = ex.code();
        status = asio_err_to_uint32(err);
    }

    return status;
}