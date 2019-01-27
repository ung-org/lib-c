#include <stddef.h>
#include "nonstd/types.h"

#include "nonstd/public/setjmp.h"

#include "nonstd/static/locale.h"
#include "nonstd/static/thread.h"
/*
#include "nonstd/static/wctype.h"
#include "nonstd/static/wctrans.h"
*/
#include "nonstd/static/printf.h"
#include "nonstd/static/scanf.h"
#include "nonstd/static/fopen.h"

#include "nonstd/syscall.h"

#include "__linux.h"

/*
static int __syscall_byname(const char *name, ...)
{
	int ret = -1;
	int sc = __libc.syscall_lookup(name);
	va_list ap;
	va_start(ap, name);
	ret = __libc.syscall_arglist(sc, ap);
	va_end(ap);
	return ret;
}

static int __syscall_bynum(int call, ...)
{
	int ret = -1;
	va_list ap;
	va_start(ap, call);
	ret = __libc.syscall_arglist(call, ap);
	va_end(ap);
	return ret;
}
*/

struct libc __libc = {
	.ctype = {
		.ctattr = 0,
		.ctolower = 1,
		.ctoupper = 2,
		.lower = 1 << 1,
		.punct = 1 << 2,
		.space = 1 << 3,
		.upper = 1 << 4,
		.xdigit = 1 << 5,
		.getmap = __getmap,
	},
	.stdio.printf = __common_printf,
	.stdio.scanf = __common_scanf,
	.stdio.fopen = __common_fopen,
	.stdlib.rand = 1,
	.stdlib.atexit_max = 32,
	/*
	.wctype.wctype =  __wctype,
	.wctype.nwctype = sizeof(__wctype) / sizeof(__wctype[0]),
	.wctype.wctrans = __wctrans,
	.wctype.nwctrans = sizeof(__wctrans) / sizeof(__wctrans[0]),
	.unistd.confstr = confstr,
	.unistd.nconfstr = sizeof(confstr) / sizeof(confstr[0]),
	*/
	.syscall_lookup = __syscall_lookup,
	.syscall = __syscall,
	/*
	.syscall_byname = __syscall_byname,
	.syscall_bynum = __syscall_bynum,
	.syscall_arglist = __syscall_arglist,
	*/
	.per_thread = per_thread,
};

extern int main();

void __libc_start(int argc, char **argv)
{
	struct __fopen_options fo = {0};
	fo.fd = 0;
	stdin = __libc.stdio.fopen(&fo);
	fo.fd = 1;
	stdout = __libc.stdio.fopen(&fo);
	fo.fd = 2;
	stderr = __libc.stdio.fopen(&fo);
	exit(main(argc, argv));
}


#include <stdio.h>
#include <stdlib.h>

/* TODO: i18n */

void __assert(const char *expr, const char *file, int line, const char *func)
{
	if (func) {
		fprintf(stderr, "Assertion failed: %s (%s:%d:%s())\n", expr,
			file, line, func);
	} else {
		fprintf(stderr, "Assertion failed: %s (%s:%d)\n", expr, file,
			line);
	}
	abort();
}

int *__errno(void)
{
	return &__libc.per_thread()->err;
}


FILE *stdin, *stdout, *stderr;
