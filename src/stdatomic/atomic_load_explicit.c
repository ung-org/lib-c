#if 0

#include <stdatomic.h>

__BASE atomic_load_explicit(const volatile __TYPE *object, memory_order order)
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

	return *object;
}


#endif

/*
STDC(201112)
*/
