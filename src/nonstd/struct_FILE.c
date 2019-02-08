#include <nonstd/io.h>

struct __FILE {
	fpos_t pos;
	char *buf;
	enum { SUPPLIED, ALLOCED, UNSET } buftype;
	int buffering;
	int bsize;
	int isopen;
	int flags;
	int lastop;

	/* verified necessary */
	int fd;
	int oflag;
	int orientation;
	int eof;
	int err;
	int nlocks;
	int thread;

	#ifdef _POSIX_SOURCE
	pid_t pipe_pid;
	#else
	long int pipe_pid;
	#endif

	struct {
		char *buf;
		size_t size;
		int allocated;
	} mem;
	
	struct __FILE *prev;
	struct __FILE *next;
};
