#include <fenv.h>

int fetestexcept(int excepts)
{
	return excepts;
}

/*d
The fetestexcept function determines which of a specified subset of the floating-
point exception flags are currently set. The excepts argument specifies the floating-
point status flags to be queried. 179)
d*/

/*r
The fetestexcept function returns the value of the bitwise OR of the floating-point
exception macros corresponding to the currently set floating-point exceptions included in
excepts.
r*/

/* example
	#pragma STDC FENV_ACCESS ON
	int set_excepts;
	feclearexcept(FE_INVALID | FE_OVERFLOW);
	// maybe raise exceptions
	set_excepts = fetestexcept(FE_INVALID | FE_OVERFLOW);
	if (set_excepts & FE_INVALID) f();
	if (set_excepts & FE_OVERFLOW) g();
*/

/*
STDC(199901)
LINK(m)
*/
