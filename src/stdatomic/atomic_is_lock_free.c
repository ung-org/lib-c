#include <stdatomic.h>

_Bool atomic_is_lock_free(const volatile __TYPE *obj)
{
	(void)obj;
	return 1;
}
