#include <stdio.h>
#include <limits.h>

/** read a line from stdin **/

char * gets(char *s)
{
	/*
	RETURN_SUCCESS(ARGUMENT(s));
	RETURN_FAILURE(CONSTANT(NULL));
	*/
	return fgets(s, INT_MAX, stdin);
}

/***
does no bounds checking, is marked obsolete in ISO/IEC 9899:1999, and
has been removed from ISO/IEC 9899:2011. It is a security risk and should not be used.

The THIS() function reads a line of input from IDENTIFIER(stdin) into the array
ARGUMENT(s). Input characters are read until a newline or end-of-file is reached. The
newline will not be appended to ARGUMENT(s). A CHAR(\0) character will be written
after the last character read into the array.

If end-of-file is reached before any characters are read, the contents of ARGUMENT(s)
remain unchanged.
***/

/*
STDC(1,201112)
*/
