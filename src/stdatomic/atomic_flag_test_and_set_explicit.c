#if 0

#include <stdatomic.h>

_Bool atomic_flag_test_and_set_explicit(volatile atomic_flag *object, memory_order order)
{
	(void)order;
	_Bool r = (*object == 1);
	*object = 1;
	return r;
}


#endif
