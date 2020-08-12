#include <nonstd/internal.h>

typedef enum {
	/* errno.h */
	ERRNO,

	/* locale.h */
	THREAD_LOCALE,
	GLOBAL_LOCALE,
	LCONV,
	LOAD_LOCALE,

	/* [w]ctype.h */
	CTYPE,
	TOLOWER,
	TOUPPER,
} LIBC_INTERNAL;
