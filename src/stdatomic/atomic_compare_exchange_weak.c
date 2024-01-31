#if 0

#include <stdatomic.h>
#include <stdbool.h>

_Bool atomic_compare_exchange_weak(volatile __TYPE *object, __BASE *expected, __BASE desired)
{
	if (memcmp(object, expected, sizeof(*object)) == 0) {
		memcpy(object, &desired, sizeof(*object));
		return true;
	}

	memcpy(expected, object, sizeof(*object));
	return false;
}


#endif

/*
STDC(201112)
*/
