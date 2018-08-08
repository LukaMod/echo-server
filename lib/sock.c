#include "sock.h"

#include <netdb.h>
#include <strings.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <fcntl.h>

#include "error.h"

void init_proc_arr(process_t* arr, size_t n) {
    int i;
    for (i = 0; i != n; ++i) {
        arr[i].buf = (char* )malloc(BUF_SIZE * sizeof(char));
        if (arr[i].buf == NULL)
            err_sys("malloc error");
        arr[i].first = arr[i].last = arr[i].buf;
    }
}

void free_proc_arr(process_t* arr, size_t n) {
    int i;
    for (i = 0; i != n; ++i) {
        free(arr[i].buf);
        arr[i].buf = arr[i].first = arr[i].last = NULL;
    }
}

int tcp_listen(const char* hostname, const char* service, socklen_t* addrlen_p) {
    int             listenfd, n;    /* n for gai_strerror */
    const int       on = 1;         /* on for setsockopt() */
    struct addrinfo hints, *res, *res_save;

    /* initialization */
    bzero(&hints, sizeof(struct addrinfo));
    hints.ai_flags = AI_PASSIVE;
    hints.ai_family = AF_UNSPEC;
    hints.ai_socktype = SOCK_STREAM;

    if ( (n = getaddrinfo(hostname, service, &hints, &res)) != 0)    
        err_quit("tcp_listen error for %s, %s: %s", hostname, service, gai_strerror(n));
    
    res_save = res;

    do {
        if ( (listenfd = socket(res->ai_family, res->ai_socktype, res->ai_protocol)) == -1)
            continue;   /* error, try next one */
        
        if (setsockopt(listenfd, SOL_SOCKET, SO_REUSEADDR, &on, sizeof(on)) == -1)
            err_sys("setsockopt() error");

        if (bind(listenfd, res->ai_addr, res->ai_addrlen) == 0)
            break;      /* success */
            
        /* bind error, close and try next one */    
        if (close(listenfd) == -1)
            err_sys("close error");

    } while ( (res = res->ai_next) != NULL);

    if (res == NULL)    /* error from final socket() or bind() */
        err_quit("tcp_listen error for %s, %s", hostname, service);
    
    if (listen(listenfd, SOMAXCONN) == -1)
        err_sys("listen error");

    if (addrlen_p)      /* return size of protocol address */
        *addrlen_p = res->ai_addrlen;

    freeaddrinfo(res_save);
    return listenfd;
}

void setnonblock(int fd) {
    int flags;

    if ( (flags = fcntl(fd, F_GETFL, 0)) == -1)
        err_sys("F_GETFL error");
        

    if (fcntl(fd, F_SETFL, flags | O_NONBLOCK) == -1)
        err_sys("F_SETFL error");
}
