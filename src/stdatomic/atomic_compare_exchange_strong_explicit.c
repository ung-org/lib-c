#if 0

#include <stdatomic.h>
#include <stdbool.h>

_Bool atomic_compare_exchange_strong_explicit(volatile __TYPE *object, __BASE *expected, __BASE desired, memory_order failure)
{
	switch (failure) {
	case memory_order_release:
	case memory_order_acq_rel:
		abort();
		break;

	default:
		break;
	}

	if (memcmp(object, expected, sizeof(*object)) == 0) {
		memcpy(object, &desired, sizeof(*object));
		return true;
	}

	memcpy(expected, object, sizeof(*object));
	return false;
}


#endif
