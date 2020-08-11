#include <stdlib.h>
#include "errno.h"
#include "_stdlib.h"

/** register a function to run at program exit **/

int atexit(void (*func)(void))
{
	struct atexit *ae = &(__stdlib.atexit);
	while (ae->nfns == sizeof(ae->fns) / sizeof(ae->fns[0])) {
		if (ae->next == NULL) {
			ae->next = calloc(1, sizeof(*ae->next));
			if (ae->next == NULL) {
				#ifdef ENOMEM
				errno =	ENOMEM;
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
registers the function ARGUMENT(func) to be called when the program
exits normally by calling FUNCTION(exit) or returning from FUNCTION(main). The
function must take no parameters and return no value.
***/

/*
IMPLEMENTATION(The number of registrations allowed (at least 32))
RETURN_FAILURE(NONZERO)
RETURN_SUCCESS(0)
STDC(1)
*/
