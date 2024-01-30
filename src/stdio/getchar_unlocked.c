#include <stdio.h>

int getchar_unlocked(void)
{
	SIGNAL_SAFE(0);
	return getc_unlocked(stdin);
}

/*
POSIX(199506)
*/
