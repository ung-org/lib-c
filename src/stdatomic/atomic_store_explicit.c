#if 0

#include <stdatomic.h>

void atomic_store_explicit(volatile __TYPE *object, __BASE desired, memory_order order)
{
	switch (order) {
	case memory_order_acquire:
	case memory_order_consume:
	case memory_order_acq_rel:
		abort();
		break;

	default:
		break;
	}

	*object = desired;
}


#endif
