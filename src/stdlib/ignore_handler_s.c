#include "stdlib.h"

/** ignore constraint violations **/
void ignore_handler_s(const char * restrict msg, void * restrict ptr, errno_t error)
{
	__C_EXT(1, 201112L);
	return;
}

/***
The fn(ignore_handler_s) function is suitable for use as the system constraint
handler as set by fn(set_constraint_handler_s).

It simply returns to its caller.
***/

/* UNDEFINED: - */
/* UNSPECIFIED: - */
/* IMPLEMENTATION: - */
/* LOCALE: - */

/*
CEXT1(201112)
*/
