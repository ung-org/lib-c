#if 0

#include <stdlib.h>
#include <limits.h>
#include <errno.h>
#include "_stdlib.h"

/** register a function to run at quick exit **/
int at_quick_exit(void (*func)(void))
{
	__C_MIN(201112L);
	if (__stdlib.nat_quick_exit >= ATEXIT_MAX) {
		return 1;
	}

	if (__stdlib.at_quick_exit == NULL) {
		__stdlib.at_quick_exit = calloc(1,
			sizeof(*__stdlib.at_quick_exit));
		if (__stdlib.at_quick_exit == NULL) {
			errno = ENOMEM;
			return 1;
		}
		__stdlib.at_quick_exit->fn = func;
		__stdlib.nat_quick_exit = 1;
		return 0;
	}

	__stdlib.at_quick_exit->next = calloc(1,
		sizeof(*__stdlib.at_quick_exit->next));
	if (__stdlib.at_quick_exit->next == NULL) {
		errno = ENOMEM;
		return 1;
	}
	__stdlib.at_quick_exit->next->fn = func;
	__stdlib.at_quick_exit->next->prev = __stdlib.at_quick_exit;
	__stdlib.at_quick_exit = __stdlib.at_quick_exit->next;
	__stdlib.nat_quick_exit++;

	return 0;
}

/***
The fn(at_quick_exit) registers the function arg(func) to be called when the
program exits via fn(quick_exit). The function must take no parameters.
***/

/* UNSPECIFIED: - */
/* UNDEFINED: - */
/* IMPLEMENTATION: the number of registrations allowed (at least 32) */
/* LOCALE: - */

/* RETURN(0): success */
/* RETURN(NZ): failure */
/*
STDC(201112)
*/


#endif
