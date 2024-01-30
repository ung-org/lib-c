#include <stdio.h>

int putchar_unlocked(int c)
{
	SIGNAL_SAFE(0);
	return putc_unlocked(c, stdout);
}

/*
POSIX(199506)
*/
