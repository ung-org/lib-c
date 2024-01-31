#if 0

#include <stdatomic.h>

void atomic_flag_clear_explicit(volatile atomic_flag *object, memory_order order)
{
	(void)order;
	*object = 0;
}


#endif

/*
STDC(201112)
*/
