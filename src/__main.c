#include <stdlib.h>
#include <stdio.h>
#include <locale.h>
#include "stdio/_stdio.h"
#include "stdlib/_stdlib.h"

#undef stdin
#undef stdout
#undef stderr

/* works on musl */
extern FILE *stdin;
extern FILE *stdout;
extern FILE *stderr;

__attribute__((constructor))
void __init_libc(void)
{
	static int init = 0;
	if (init) {
		return;
	}
	init = 1;

	__stdin = stdin ? stdin : __stdio.FILES + 0;
	__stdin->fd = 0;
	freopen(NULL, "r", __stdin);

	__stdout = stdout ? stdout : __stdio.FILES + 1;
	__stdout->fd = 1;
	freopen(NULL, "w", __stdout);

	__stderr = stderr ? stderr : __stdio.FILES + 2;
	__stderr->fd = 2;
	freopen(NULL, "w", __stderr);
	setvbuf(__stderr, NULL, _IONBF, 0);
}

void __main(int (*main)(int, char*[]), int argc, char **argv)
{
	environ = argv + argc + 1;
	__init_libc();

	exit(main(argc, argv));
}

void __stack_chk_fail(void) {}

/*
void _init(void) {}
void _fini(void) {}
*/
