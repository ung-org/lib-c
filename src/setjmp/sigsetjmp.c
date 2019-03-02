#include <setjmp.h>
#include "signal.h"

/** save program state with signal mask **/

int sigsetjmp(sigjmp_buf env, int savemask)
{
	if (savemask) {
		/* save mask to env */
	}
	return setjmp(env);
}

/***
saves the current state of the calling environment in the
TYPEDEF(sigjmp_buf) ARGUMENT(env). If ARGUMENT(savemask) is nonzero, the saved
environment includes the signal mask of the current thread.
***/

/*
CONSTRAINT: entire controlling expression of a selection or iteration statement
CONSTRAINT: one operand of a relational or equality operator which is the entire controlling expression of a selction or iteration statement
CONSTRAINT: the operand of a unary ! as the entire controlling expression of a selection or iteration statement
CONSTRAINT: an entire expression statement

UNSPECIFIED(Whether THIS() is a macro or identifier with external linkage)

UNDEFINED(A macro definition of THIS() is suppressed in order to access an actual function)
UNDEFINED(A program defines an external identifier named LITERAL(setjmp))

POSIX(1)
*/
