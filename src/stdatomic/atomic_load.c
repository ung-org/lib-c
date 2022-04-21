#include <stdatomic.h>

__BASE atomic_store(const volatile __TYPE *object)
{
	return *object;
}
