#ifndef SOCK_H
#define SOCK_H

#include <sys/socket.h>

#define BUF_SIZE    2048
#define MAX_PROC    64

typedef struct process {
    char    *buf, *first, *last;
} process_t;

/* initialize process array */

void init_proc_arr(process_t* arr, size_t n);

/* free buffer and reset fd */

void free_proc_arr(process_t* arr, size_t n);

/*
 * @hostname is either a valid host name or an IPv4/Ipv6 adress
 * @service is either a port number or a service
 * @addrlen_p if non-null, returns the size of address
 * 
 * at least, one of hostname and service must be non-null
 * 
 * @return tcp listenfd
 */

int tcp_listen(const char* hostname, const char* service, socklen_t* addrlen_p);

void setnonblock(int fd);

#endif
