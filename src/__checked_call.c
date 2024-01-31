#include "_safety.h"

#if 0
_Thread_local
#endif
struct __checked_call __checked_call = { 0 };

#ifdef abort_handler_s
#include "stdlib/abort_handler_s.c"
#endif
