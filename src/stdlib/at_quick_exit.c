#include <stdlib.h>
#include <limits.h>
#include <errno.h>
#include "_stdlib.h"

/** register a function to run at quick exit **/
int at_quick_exit(void (*func)(void))
{
	SIGNAL_SAFE(0);

	struct atexit *ae = &(__stdlib.at_quick_exit);
	while (ae->nfns == sizeof(ae->fns) / sizeof(ae->fns[0])) {
		if (ae->next == NULL) {
			ae->next = calloc(1, sizeof(*ae->next));
			if (ae->next == NULL) {
				#ifdef ENOMEM
				errno = ENOMEM;
				#endif
				return 1;
			}
			ae->next->prev = ae;
		}
		ae = ae->next;
	}
	ae->fns[ae->nfns++] = func;

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
