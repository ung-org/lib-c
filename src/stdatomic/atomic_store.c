#include <stdatomic.h>

void atomic_store(volatile __TYPE *object, __BASE desired)
{
	*object = desired;
}
