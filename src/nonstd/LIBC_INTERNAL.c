#include <nonstd/internal.h>

typedef enum {
	/* nonstd/syscall.h */
	SYSCALL_LOOKUP,

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

	/* stdio.h */
	FILE_STREAMS,
	PRINTF,
	SCANF,

	/* stdlib.h */
	ATEXIT,
	RAND
} LIBC_INTERNAL;
