#ifndef ___SETJMP_H__
#define ___SETJMP_H__

#include <setjmp.h>
#include "_safety.h"

struct __valid_jmp_buf {
};

extern struct __setjmp_h {
	struct valid_jmp_buf {
		unsigned long int *buf;
		unsigned long int sum;
	} *valid;
	size_t nvalid;
} __setjmp_h;


#ifndef NDEBUG
static inline unsigned long int jmp_sum(jmp_buf env)
{
	long unsigned int ret = 0;
	for (size_t i = 0; i < sizeof(jmp_buf) / sizeof(unsigned long int); i++) {
		ret ^= env[i];
	}
	return ret;
}

#define ADD_JMP_BUF(__env) do { \
	struct valid_jmp_buf __v = { \
		(unsigned long int *)(__env), \
		jmp_sum(__env), \
	}; \
	ADD_PREV(__v, __setjmp_h.valid, __setjmp_h.nvalid); \
} while (0)

#define ASSERT_JMP_BUF(__env) do { \
	int __found = 0; \
	for (size_t __i = 0; __i < __setjmp_h.nvalid; __i++) { \
		if (__setjmp_h.valid[__i].buf == (unsigned long int *)(__env)) { \
			if (jmp_sum(__env) != __setjmp_h.valid[__i].sum) { \
				UNDEFINED("jmp_buf has been modified!"); \
			} \
			__found = 1; \
			break; \
		} \
	} \
	if (!__found) { \
		UNDEFINED("In call to longjmp(): Provided jmp_buf was not returned by a previous call to setjmp()"); \
	} \
} while (0)

#else
#define ADD_JMP_BUF(__env) (void)(__env)
#define ASSERT_JMP_BUF(__env) (void)(__env)
#endif

#endif
