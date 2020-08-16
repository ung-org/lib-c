#include <sys/uio.h>

struct iovec {
	void * iov_base;
	size_t iov_len;
};

/*
XOPEN(400)
*/
