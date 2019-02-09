#include "sys/types.h"
#include <sys/stat.h>
#include "stdlib.h"
#include "nonstd/assert.h"

int stat(const char * restrict path, struct stat * restrict buf)
{
	ASSERT_NONNULL(path);
	ASSERT_NONNULL(buf);

	int ret = 0;
	#if 0
	char *linkbuf = NULL;

	do {
		ret = lstat(path, buf);
		if (S_ISLNK(buf->st_mode)) {
			linkbuf = realloc(linkbuf, buf->st_size + 1);
			readlink(path, linkbuf, buf->st_size);
			path = linkbuf;
		} else {
			path = NULL;
		}
	} while (path);
	realloc(linkbuf, 0);
	#endif

	return ret;
}
/*
POSIX(1)
*/
