#include <search.h>

void *tsearch(const void * key, void ** rootp, int (*compar) (const void *, const void *))
{
	return (void*)key;
}

/*
XOPEN(4)
*/
