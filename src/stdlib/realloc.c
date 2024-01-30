#if ((!defined _POSIX_C_SOURCE) || (_POSIX_C_SOURCE < 199309L))
#undef _POSIX_C_SOURCE
#define _POSIX_C_SOURCE 199309L		/* force mmap() constants */
#define POSIX_FORCED
#endif

#include <stdlib.h>
#include "_stdlib.h"
#if 0
//#include <sys/types.h>
//#include <fcntl.h>
//#include <sys/mman.h>
#endif

#ifdef POSIX_FORCED
#include "_syscall.h"
#define mmap(_a, _l, _p, _fl, _fd, _o)	__scall6(mmap, _a, _l, _p, _fl, _fd, _o)
#define open(_p, _a, _m)		__scall3(open, _p, _a, _m)
#endif

#define O_RDWR 0
#define PROT_READ 0
#define PROT_WRITE 0
#define MAP_PRIVATE 0
#define MAP_FAILED 0

/** change the amount of memory allocated **/

void * realloc(void * ptr, size_t size)
{
	SIGNAL_SAFE(0);

	/* FIXME: forward dependency on POSIX.1b-1993, non-std /dev/zero */
	static int backing = -1;

	if (backing == -1) {
		backing = open("/dev/zero", O_RDWR /* | O_CLOEXEC */, 0);
	}

	if (ptr == NULL) {
		/* malloc() */
		ptr = (void*)(long)mmap(NULL, size, PROT_READ | PROT_WRITE,
			MAP_PRIVATE, backing, 0);
		if (ptr == MAP_FAILED) {
			return NULL;
		}
	} else if (size == 0) {
		/* free() */
	}

	/* TODO: reallocate */

	return ptr;
}

/***
changes the amount of memory allocated to ARGUMENT(ptr) to ARGUMENT(size)
bytes.

If ARGUMENT(ptr) is CONSTANT(NULL), a new allocation is made.

If ARGUMENT(size) is 0 and ARGUMENT(ptr) is not CONSTANT(NULL), the memory at ARGUMENT(ptr) is
deallocated.

Otherwise, the memory allocated to ARGUMENT(ptr) is resized. If enough memory cannot
be allocated, ARGUMENT(ptr) will not change. If enough memory is available, the
address of ARGUMENT(ptr) may change, but the contents will be the same up to the
minimum of the old and new sizes.
***/

/*
UNSPECIFIED(The order and contiguity of space allocated by success calls)
UNDEFINED(ARGUMENT(ptr) is not CONSTANT(NULL) or a pointer returned by a previous call to FUNCTION(calloc), FUNCTION(malloc), or FUNCTION(realloc))
UNDEFINED(ARGUMENT(ptr) has been previously deallocated by FUNCTION(free) or FUNCTION(realloc))
RETURN_FAILURE(CONSTANT(NULL))
RETURN_SUCCESS(a pointer to the reallocate space)
STDC(1)
*/
