#include <setjmp.h>

int sigsetjmp(sigjmp_buf env, int savemask)
{
	(void)env; (void)savemask;
	return 0;
}
/*
POSIX(1)
*/
