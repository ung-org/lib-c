#include <glob.h>

typedef struct {
	size_t	gl_pathc;
	char **	gl_pathv;
	size_t	gl_offs;
} glob_t;
/*
POSIX(2)
*/

