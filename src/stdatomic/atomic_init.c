#if 0

#include <stdatomic.h>

void atomic_init(volatile __TYPE *obj, __BASE value)
{
	*obj = ATOMIC_VAR_INIT(value);
}


#endif

/*
STDC(201112)
*/
