#include "_stdlib.h"

struct __stdlib __stdlib = {
	.constraint_handler = abort_handler_s,
};

/*
STDC(0)
SIGNAL_SAFE(0)
*/
