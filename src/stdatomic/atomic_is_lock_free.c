#if 0

#include <stdatomic.h>

_Bool atomic_is_lock_free(const volatile __TYPE *obj)
{
	SIGNAL_SAFE(1);
	(void)obj;
	return 1;
}


#endif
