#include <nonstd/io.h>

struct io_options {
	const char *fnname;
	char *string;
	struct __FILE *stream;
	size_t maxlen;
	int fd;
	int flags;
};
