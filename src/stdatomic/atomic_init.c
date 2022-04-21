#include <stdatomic.h>

void atomic_init(volatile __TYPE *obj, __BASE value)
{
	*obj = ATOMIC_VAR_INIT(value);
}
