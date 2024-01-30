#include <stdlib.h>
#include "stdlib/_stdlib.h"

void assert()
{
	__stdlib.constraint_handler("Undefined Behavior: The assert() macro has been suppressed to access an actual function", NULL, 0);
	abort();
}

/*
SIGNAL_SAFE(0)
STDC(0)
*/
