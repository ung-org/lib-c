#include "_stdlib.h"

struct __stdlib __stdlib = {
	#if __STDC_VERSION__ >= 201112 && defined __STDC_WANT_LIB_EXT1__
	.constraint_handler = abort_handler_s,
	#endif
};

/*
STDC(0)
SIGNAL_SAFE(0)
*/
