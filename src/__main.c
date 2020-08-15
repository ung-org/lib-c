#include "stdlib.h"
#include "stdio.h"
#include "locale.h"
#include "stdio/_stdio.h"
#include "stdlib/_stdlib.h"

#ifdef _POSIX_SOURCE
#define DEFAULT_LOCALE "POSIX"
#include "unistd.h"
#else
#define DEFAULT_LOCALE "C"
#include "_syscall.h"
#include "termios/NCCS.c"
#include "termios/speed_t.c"
#include "termios/cc_t.c"
#include "termios/tcflag_t.c"
#include "termios/struct_termios.c"
#include "termios/_termios.h"
#define isatty(fd) ioctl(fd, TCFLSH, 0)
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
	setvbuf(stdin, NULL, isatty(0) ? _IOLBF : _IOFBF, BUFSIZ);

	stdout = __stdio.FILES + 1;
	stdout->fd = 1;
	freopen(NULL, "w", stdout);
	setvbuf(stdin, NULL, isatty(1) ? _IOLBF : _IOFBF, BUFSIZ);

	stderr = __stdio.FILES + 2;
	stderr->fd = 2;
	freopen(NULL, "w", stderr);
	setvbuf(stderr, NULL, _IONBF, 0);

	stdin->next = stdout;
	stdout->next = stderr;

	stdout->prev = stdin;
	stderr->prev = stdout;

	setlocale(LC_ALL, DEFAULT_LOCALE);

	exit(main(argc, argv));
}
