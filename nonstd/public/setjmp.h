#include <setjmp.h>

int __setjmp(jmp_buf env)
{
	(void)env;
	return 0;
}
