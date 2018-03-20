cmake_minimum_required(VERSION 3.7)
project(yampl_ipc_server)

set(CMAKE_CXX_STANDARD 14)

# Set to default if not provided in the args
if (NOT(${ASIO_INCLUDE_DIR}))
    set(ASIO_INCLUDE_DIR /usr/include)
endif ()

include_directories(
        ${CMAKE_SOURCE_DIR}/include
)

# Yampl IPC Server
add_executable(yampl_ipc_server
        ${CMAKE_SOURCE_DIR}/src/main.cpp
        ${CMAKE_SOURCE_DIR}/src/ipc_server.cpp
)