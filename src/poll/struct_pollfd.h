#include <poll.h>

struct pollfd {
	int fd;
	short events;
	short revents;
};

/*
XOPEN(400)
POSIX(200809)
*/
