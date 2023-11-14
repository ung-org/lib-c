#if 0

#include <stdatomic.h>

void atomic_signal_fence(memory_order order)
{
	switch (order) {
	case memory_order_relaxed:
		break;

	case memory_order_acquire:
	case memory_order_consume:
		/* acquire fence */
		break;

	case memory_order_release:
		/* release fence */
		break;

	case memory_order_acq_rel:
		/* acquire fence and release fence */
		break;

	case memory_order_seq_cst:
		/* sequentially consistent acquire and release fence */
		break;
	}
}


#endif
