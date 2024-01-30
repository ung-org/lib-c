#include <setjmp.h>
#include "_safety.h"

/** save program state **/

int _setjmp(jmp_buf env)
{
	SIGNAL_SAFE(0);
	return setjmp(env);
}

/***
saves the current state, without the signal mask, of the calling environment
in the TYPEDEF(jmp_buf) ARGUMENT(env).
***/

/*
CONSTRAINT: entire controlling expression of a selection or iteration statement
CONSTRAINT: one operand of a relational or equality operator which is the entire controlling expression of a selction or iteration statement
CONSTRAINT: the operand of a unary ! as the entire controlling expression of a selection or iteration statement
CONSTRAINT: an entire expression statement

UNSPECIFIED(Whether THIS() is a macro or identifier with external linkage)

UNDEFINED(A macro definition of THIS() is suppressed in order to access an actual function)
UNDEFINED(A program defines an external identifier named LITERAL(setjmp))

XOPEN(400)
XOBSOLETE(700, FUNCTION(siglongjmp))
*/
