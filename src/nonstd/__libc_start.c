#include "stdio.h"
#include "locale.h"

#include "nonstd/io.h"

void __libc_start(int argc, char **argv)
{
	struct __FILE sin, sout, serr;

	sin.fd = 0;
	stdin = &sin;

	sout.fd = 1;
	stdout = &sout;

	serr.fd = 2;
	stderr = &serr;

        #if defined _POSIX_SOURCE
        setlocale(LC_ALL, "POSIX");
        #else
        setlocale(LC_ALL, "C");
        #endif

	extern void exit(int);
	extern int main(int, char*[]);

        exit(main(argc, argv));
}
