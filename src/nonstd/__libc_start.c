#include "stdlib.h"
#include "stdio.h"
#include "locale.h"

#include "nonstd/io.h"

#ifdef _POSIX_SOURCE
#define DEFAULT_LOCALE "POSIX"
#include "unistd.h"
#else
#define DEFAULT_LOCALE "C"
#include "nonstd/syscall.h"
#include "../termios/NCCS.c"
#include "../termios/cc_t.c"
#include "../termios/tcflag_t.c"
#include "../termios/struct_termios.c"
static struct termios __tios;
#define isatty(fd) (__syscall(__lookup("tcgetattr"), fd, &__tios) == 0)
#endif

void __libc_start(int argc, char **argv)
{
	extern int main(int, char*[]);
	struct __FILE *files = __libc(FILE_STREAMS);

	stdin = files + 0;
	stdin->fd = 0;
	freopen(NULL, "r", stdin);
	setvbuf(stdin, NULL, isatty(0) ? _IOLBF : _IOFBF, BUFSIZ);

	stdout = files + 1;
	stdout->fd = 1;
	freopen(NULL, "w", stdout);
	setvbuf(stdin, NULL, isatty(1) ? _IOLBF : _IOFBF, BUFSIZ);

	stderr = files + 2;
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
