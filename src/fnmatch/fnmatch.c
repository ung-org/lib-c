#include <fnmatch.h>
#include "nonstd/assert.h"

int fnmatch(const char * pattern, const char * string, int flags)
{
	ASSERT_NONNULL(pattern);
	ASSERT_NONNULL(string);
	/* __ASSERT_FLAGS(flags, FNM_PATHNAME | FNM_NOESCAPE | FNM_PERIOD); */
	/*
	const char *ppos = pattern;
	const char *spos = string;
	*/

	return 0;
}
/*
POSIX(2)
*/

