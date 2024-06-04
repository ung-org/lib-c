#include "_safety.h"

int __fpclassify_error(void)
{
	UNDEFINED("Argument to fpclassify() macro was not a real floating type");
	return 0;
}

/*
STDC(0)
SIGNAL_SAFE(0)
*/
