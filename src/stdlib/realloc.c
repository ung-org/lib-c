#include <stdlib.h>
#include "sys/types.h"
#include "fcntl.h"
#include "sys/mman.h"
#if defined _POSIX_C_SOURCE && 199305L <= _POSIX_C_SOURCE
/* mu */
#else
#include "../sys/mman/mmap.c"
#define PROT_READ 0x1
#define PROT_WRITE 0x2
#define MAP_PRIVATE 0x2
#endif

/** change the amount of memory allocated **/

void * realloc(void * ptr, size_t size)
{
	/* FIXME: forward dependency on POSIX.1b-1993, non-std /dev/zero */
	static int backing = -1;

	if (backing == -1) {
		backing = open("/dev/zero", O_RDWR /* | O_CLOEXEC */, 0);
	}

	if (ptr == NULL) {
		/* malloc() */
		return (void*)(long)mmap(NULL, size, PROT_READ | PROT_WRITE,
			MAP_PRIVATE, backing, 0);
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
