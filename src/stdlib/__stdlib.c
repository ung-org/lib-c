#include "_stdlib.h"

#if ! (__STDC_VERSION__ >= 201112 && defined __STDC_WANT_LIB_EXT1__)
#define abort_handler_s __abort_handler_s
#endif

struct __stdlib __stdlib = {
	.constraint_handler = abort_handler_s,
};

/*
STDC(0)
SIGNAL_SAFE(0)
*/
