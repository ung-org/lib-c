#if 0

#include <stdatomic.h>

__BASE atomic_exchange(volatile __TYPE *object, __BASE desired)
{
	return *object = desired;
}


#endif

/*
STDC(201112)
*/
