#include <setjmp.h>
#include "_safety.h"

#undef setjmp

int setjmp(jmp_buf jb)
{
	(void)jb;
	UNDEFINED("The setjmp() macro has been suppressed to access an actual function");
	return 0;
}

/*
SIGNAL_SAFE(0)
STDC(0)
*/
