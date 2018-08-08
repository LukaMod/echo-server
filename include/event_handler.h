#ifndef EVENT_HANDLER_H
#define EVENT_HANDLER_H

#define MAX_EVENTS   256

/* event filter, support bit operation */

extern const int kRead;
extern const int kWrite;

void register_event(int kqueuefd, int fd, int filter);

void remove_event(int kqueuefd, int fd, int filter);

void enable_event(int kqueuefd, int fd, int filter);

void disable_event(int kqueuefd, int fd, int filter);

#endif
