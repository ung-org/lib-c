#include "stdlib.h"
#include "stdio.h"
#include "locale.h"
#include "stdio/_stdio.h"
#include "stdlib/_stdlib.h"

#ifdef _POSIX_SOURCE
#define DEFAULT_LOCALE "POSIX"
#else
#define DEFAULT_LOCALE "C"
#endif

void __main(int argc, char **argv)
{
	extern int main(int, char*[]);

	#ifdef _POSIX_SOURCE
	extern char **environ;
	environ = argv + argc + 1;
	__stdlib.environ = environ;
	#else
	__stdlib.environ = argv + argc + 1;
	#endif

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

	setlocale(LC_ALL, DEFAULT_LOCALE);

	exit(main(argc, argv));
}

void __stack_chk_fail(void) {}
