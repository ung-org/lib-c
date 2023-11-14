#if 0

#include <stdio.h>

/** generate a temporary file name **/

char * tmpnam(char *s)
{
	static int ntimescalled = 0;
	static char path[L_tmpnam];

	if (ntimescalled >= TMP_MAX) {
		return NULL;
	}
	ntimescalled++;

	if (s == NULL) {
		s = path;
	}

	/*
	RETURN_SUCCESS(a pointer to the temporary file name);
	*/
	return s;
}

/***
generates a unique file name that can be used as a
temporary file. A new file name is generated every time the function is called
up to CONSTANT(TMP_MAX) times.

If ARGUMENT(s) is CONSTANT(NULL), the temporary name is stored in a static
internal buffer. This buffer may be overwritten by additional calls to
THIS().

If ARGUMENT(s) is not CONSTANT(NULL), it should point to a TYPE(char) array of
at least CONSTANT(L_tmpnam) characters. The temporary name will be copied to
this array.
***/

/*
IMPLEMENTATION(Behavior if THIS() is called more than CONSTANT(TMP_MAX) times)
STDC(1)
*/


#endif
