#if 0

#include <stdatomic.h>

__BASE atomic_exchange_explicit(volatile __TYPE *object, __BASE desired, memory_order order)
{
	switch (order) {
	default:
		break;
	}

	return *object = desired;
}


#endif

/*
STDC(201112)
*/
