#undef assert

#ifdef NDEBUG
#	define assert(__exp) ((void)0)
#else
#	if __STDC_VERSION__ < 199901L
#		define __func__ ((char*)0)
#	endif
#	define assert(__exp) \
		((void)((__exp) || \
			(__assert(#__exp, __FILE__, __LINE__, __func__),  0)))
#endif

/** insert program diagnostics **/

/***
adds mandatory checks to programs. If ARGUMENT(expression) is false,
FUNCTION(assert) prints a diagnostic message to IDENTIFIER(stderr). The
message includes the text of the failed assertion as well as the file name and
line number of the source where the assertion failed. Compilers supporting
std(C99) or higher will also include the name of the function in which the
assertion failed. After printing the diagnostic message, THIS()
causes abnormal program termination by calling FUNCTION(abort).

If the macro IDENTIFIER(NDEBUG) is defined, THIS() is
defined as DEFINITION(((void)0)).
***/

/* in c89 - void assert(int expression); */
/* in c99 - void assert(/scalar/ expression); */

/*
PROTOTYPE(void assert(int expression);)
IMPLEMENTATION(The format of the diagnostic message, TODO: document this here)
UNDEFINED(The THIS() macro is suppressed)
UNDEFINED(ARGUMENT(expression) does not have a scalar type)
STDC(1)
*/
