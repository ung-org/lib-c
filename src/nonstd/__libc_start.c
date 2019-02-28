#include "stdio.h"
#include "locale.h"

#include "nonstd/io.h"

void __libc_start(int argc, char **argv)
{
	struct __FILE *files = __libc(FILE_STREAMS);

	stdin = files + 0;
	stdin->fd = 0;

	stdout = files + 1;
	stdout->fd = 1;

	stderr = files + 2;
	stderr->fd = 2;

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
