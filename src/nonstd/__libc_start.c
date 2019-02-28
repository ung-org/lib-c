#include "stdio.h"
#include "locale.h"

#include "nonstd/io.h"

#ifdef _POSIX_SOURCE
#include "unistd.h"
#else
#include "nonstd/syscall.h"
#define isatty(fd) __syscall(__lookup("tty"), fd)
#endif

void __libc_start(int argc, char **argv)
{
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

        #if defined _POSIX_SOURCE
        setlocale(LC_ALL, "POSIX");
        #else
        setlocale(LC_ALL, "C");
        #endif

	extern void exit(int);
	extern int main(int, char*[]);

        exit(main(argc, argv));
}
