#include <stdlib.h>
#include <stdio.h>
#include <sys/event.h>
#include <errno.h>
#include <unistd.h>

#include "sock.h"
#include "error.h"
#include "event_handler.h"

int main(int argc, char** argv) {
    /* descriptor */
    int             kqueuefd, listenfd, connfd;

    int             i, nevents;
    struct kevent   eventlist[MAX_EVENTS], event;
    process_t       processes[MAX_PROC], *proc;
    const int       kOffset = -3;   /* for stdin, stdout, stderr, listenfd, kqueuefd */
    ssize_t         n, nwritten;              /* for read and write */    

    /* close unused stdin, stdout */
    if (close(STDIN_FILENO) == -1 || close(STDOUT_FILENO) == -1)
        err_sys("close error");

    if (argc == 2)
        listenfd = tcp_listen(NULL, argv[1], NULL);
    else
        err_quit("Usage: server <service or port>");

    if ( (kqueuefd = kqueue()) == -1)
        err_sys("kqueue error");

    init_proc_arr(processes, MAX_PROC);

    setnonblock(listenfd);

    register_event(kqueuefd, listenfd, kRead);

    for ( ; ; ) {
        if ( (nevents = kevent(kqueuefd, NULL, 0, eventlist, MAX_EVENTS, NULL)) == -1)
            err_sys("kevent error");
        for (i = 0; i != nevents; ++i) {
            event = eventlist[i];
            if (event.ident == listenfd) {
                if ( (connfd = accept(listenfd, NULL, NULL)) == -1) {
                    if (errno != EAGAIN && errno != EWOULDBLOCK)    /* if non-block, ignore these errno */
                        err_sys("accept error");
                } else {
                    if (connfd + kOffset >= MAX_PROC) {
                        if (close(connfd) == -1)    /* if exceeds MAX_PROC, close connfd immediately */
                            err_sys("close error");
                    } else {                     
                        setnonblock(connfd);
                        register_event(kqueuefd, connfd, kRead | kWrite);
                    }
                }
            } else {
                connfd = event.ident;
                proc = processes + connfd + kOffset;

                if (event.filter == EVFILT_READ) {
                    
                    if ( (n = read(connfd, proc->last, proc->buf + BUF_SIZE - proc->last)) == -1) {
                        if (errno != EWOULDBLOCK && errno != EAGAIN)
                            err_sys("read error");
                    } else if (n == 0) {    /* EOF */
                        event.udata = 1;    
                        if (proc->first == proc->last) {
                            if (close(connfd) == -1)
                                err_sys("close error");
                        }
                    } else {
                        proc->last += n;
                    }
                }
                else {  /* EVFILT_WRITE */
                    if ( (n = proc->last - proc->first) > 0) {
                        if ( (nwritten = write(connfd, proc->first, n)) == -1) {
                            if (errno != EAGAIN && errno != EWOULDBLOCK)
                                err_sys("write error");
                        } else {
                            proc->first += nwritten;
                            if (proc->first == proc->last) {
                                proc->first = proc->last = proc->buf;   /* back to beginning of buf */
                                if (event.udata) {
                                    if (close(connfd) == -1)
                                        err_sys("close error");
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    free_proc_arr(processes, MAX_PROC);

}
