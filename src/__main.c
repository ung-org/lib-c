#include <stdlib.h>
#include <stdio.h>
#include <locale.h>
#include "stdio/_stdio.h"
#include "stdlib/_stdlib.h"

__attribute__((constructor))
void __init_libc(void)
{
	static int init = 0;
	if (init) {
		return;
	}
	init = 1;

	stdin = __stdio.FILES + 0;
	stdin->fd = 0;
	freopen(NULL, "r", stdin);

	stdout = __stdio.FILES + 1;
	stdout->fd = 1;
	freopen(NULL, "w", stdout);

	stderr = __stdio.FILES + 2;
	stderr->fd = 2;
	freopen(NULL, "w", stderr);
	setvbuf(stderr, NULL, _IONBF, 0);
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
