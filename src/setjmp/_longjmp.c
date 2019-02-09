#include <setjmp.h>

void _longjmp(jmp_buf env, int val)
{
	return longjmp(env, val);
}

/*
XOPEN(400)
*/
