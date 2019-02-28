#include <stdlib.h>
#include "string.h"

/** get an environment variable **/

char * getenv(const char * name)
{
	#ifdef _POSIX_SOURCE
	extern char **environ;
	int i = 0;

	while (environ[i] != 0) {
		if (!strncmp(environ[i], name, strlen(name)) && environ[i][strlen(name)] == '=')
		return environ[i];
		i++;
	}
	#else
	(void)name;
	#endif

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
