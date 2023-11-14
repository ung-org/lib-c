#if 0

#include <stdatomic.h>

void atomic_flag_clear(volatile atomic_flag *object)
{
	*object = 0;
}


#endif
