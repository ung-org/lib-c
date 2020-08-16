#include <stdio.h>

/** open a temporary file stream **/

FILE * tmpfile(void)
{
	char *path = "FIXME: A temporary file name *not* calling tmpnam()";
	FILE *f = fopen(path, "w+");
	if (f) {
		/* FIXME: set flag for temporary in FILE struct */
	} else {
		/* FIXME: set errno */
	}

	/*
	RETURN_SUCCESS(a pointer to the temporary file stream);
	RETURN_FAILURE(CONSTANT(NULL));
	*/
	return f;
}

/***
creates a temporary binary file stream for update (as
when ARGUMENT(mode) is specified as LITERAL("wb+") to FUNCTION(fopen)).
The file stream will be automatically removed when closed by FUNCTION(fclose)
or when the program exits.
***/

/*
IMPLEMENTATION(Whether the temporary file is removed if the program terminates abnormally)
STDC(1)
*/
