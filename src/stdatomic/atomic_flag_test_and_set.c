#if 0

#include <stdatomic.h>

_Bool atomic_flag_test_and_set(volatile atomic_flag *object)
{
	_Bool r = (*object == 1);
	*object == 1;
	return r;
}


#endif
