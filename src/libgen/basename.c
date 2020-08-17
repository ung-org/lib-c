#include <libgen.h>
#include <string.h>

char * basename(char * path)
{
	static char *dot = ".";
	static char *slash = "/";
	char *lastslash;
	size_t len;

	if (path == NULL) {
		return dot;
	}

	len = strlen(path);

	if (len == 0) {
		return dot;
	}

	/* Trim trailing slashes */
	while (path[len] == '/') {
		path[len--] = '\0';
	}

	/* path consisted entirely of slashes */
	if (len == 0) {
		return slash;
	}
	
	lastslash = strrchr(path, '/');
	if (lastslash) {
		path = lastslash + 1;
	}

	return path;
}

/*
XOPEN(400)
*/
