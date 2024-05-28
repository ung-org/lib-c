#include <stdlib.h>
#include <string.h>
#include "_stdlib.h"
#include "_readonly.h"

/** get an environment variable **/

char * getenv(const char * name)
{
	size_t len = 0;
	size_t i = 0;
	static char *variable = NULL;

	SIGNAL_SAFE(0);
	if (variable == NULL) {
		variable = __readonly(RO_ALLOC, "getenv");
	}

	len = strlen(name);
	for (i = 0; environ[i] != NULL; i++) {
		if (!strncmp(environ[i], name, len) && environ[i][len] == '=') {
			__readonly(RO_UNLOCK, variable);
			strcpy(variable, environ[i] + len + 1);
			__readonly(RO_LOCK, variable);
			return variable;
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
