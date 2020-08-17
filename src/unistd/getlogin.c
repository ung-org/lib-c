#include <stdlib.h>

char * getlogin(void)
{
	/* TODO: get actual controlling terminal, then read utmpx */
	
	return getenv("LOGNAME");
}

/*
POSIX(1)
*/
