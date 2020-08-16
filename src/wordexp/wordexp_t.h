#include <wordexp.h>

typedef struct {
	size_t	we_wordc;
	char **	we_wordv;
	size_t	we_offs;
} wordexp_t;

/*
POSIX(2)
*/

