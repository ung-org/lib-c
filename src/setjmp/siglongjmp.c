#include <setjmp.h>

void siglongjmp(sigjmp_buf env, int val)
{
	(void)env; (void)val;
	/* TODO */
}
/*
POSIX(1)
*/
