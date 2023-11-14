#include <stdlib.h>
#include "stdlib/_stdlib.h"

_Noreturn void assert(int exp)
{
	(void)exp;
	__stdlib.constraint_handler("Undefined Behavior: The assert() macro has been suppressed to access an actual function", NULL, 0);
	abort();
}

/*
STDC(0)
*/
