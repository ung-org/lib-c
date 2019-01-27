#include "nonstd/FILE.h"

static FILE *__common_fopen(struct __fopen_options *opt)
{
	FILE *f = NULL;
	if (__libc.stdio.nopen < FOPEN_MAX) {
		f = __libc.stdio.files + __libc.stdio.nopen;
		__libc.stdio.nopen++;
	}
	f->fd = opt->fd;
	return f;
}
