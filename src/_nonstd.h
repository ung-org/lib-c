#ifndef ___NONSTD_H__
#define ___NONSTD_H__

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

void *__libc(LIBC_INTERNAL __variable);

#endif
