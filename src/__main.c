#if 0

#include <stdlib.h>
#include <stdio.h>
#include <locale.h>
#include "stdio/_stdio.h"
#include "stdlib/_stdlib.h"

void __main(int argc, char **argv)
{
	extern int main(int, char*[]);

	environ = argv + argc + 1;

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

	exit(main(argc, argv));
}

void __stack_chk_fail(void) {}


#endif
