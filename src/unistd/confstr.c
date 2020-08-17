#include <sys/types.h>
#include <unistd.h>
#include <errno.h>
#include <string.h>
#include "_assert.h"

size_t confstr(int name, char *buf, size_t len)
{
	char *value = NULL;

	if (len > 0) {
		ASSERT_NONNULL(buf);
	}

	switch (name) {
	#include "_confstr.h"
	default:
		value = NULL;
		break;
	}

	if (value == NULL) {
		errno = EINVAL;
		return 0;
	}

	if (len > 0) {
		strncpy(buf, value, len);
	}

	return strlen(value);
}

/*
POSIX(2)
*/
