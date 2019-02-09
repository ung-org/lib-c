#include <fnmatch.h>
#include "__nonstd.h"

int fnmatch(const char * pattern, const char * string, int flags)
{
	__ASSERT_NONNULL(pattern);
	__ASSERT_NONNULL(string);
	// __ASSERT_FLAGS(flags, FNM_PATHNAME | FNM_NOESCAPE | FNM_PERIOD);
	const char *ppos = pattern;
	const char *spos = string;

	return 0;
}
/*
POSIX(2)
*/

