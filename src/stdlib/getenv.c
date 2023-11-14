#if 0

#include <stdlib.h>
#include <string.h>
#include "_stdlib.h"

/** get an environment variable **/

char * getenv(const char * name)
{
	size_t len = strlen(name);
	size_t i = 0;

	for (i = 0; environ[i] != NULL; i++) {
		if (!strncmp(environ[i], name, len) && environ[i][len] == '=') {
			return environ[i] + len + 1;
		}
	}

	return NULL;
}

/***
read the environment variable ARGUMENT(name) from the host environment.
***/

/*
UNDEFINED(Modifying the returned string)
IMPLEMENTATION(The set of environment variable names)
IMPLEMENTATION(The method of altering the environment)
RETURN_FAILURE(CONSTANT(NULL))
RETURN_SUCCESS(a pointer to the environment string)
STDC(1)
*/


#endif
