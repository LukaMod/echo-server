cmake_minimum_required(VERSION 3.12.0)
project(echo_server)

# libarary

add_library(kqueuelib
    lib/error.c
    lib/event_handler.c
    lib/sock.c
)

target_include_directories(kqueuelib PRIVATE include)

target_compile_options(kqueuelib
    PRIVATE -Wall -Wextra -pedantic -ansi
)

# server

add_executable(server src/serv.c)

target_include_directories(server PRIVATE include)

target_compile_options(server
    PRIVATE -Wall -Wextra -pedantic -ansi
)

target_link_libraries(server PRIVATE kqueuelib)