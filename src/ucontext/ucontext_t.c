#include <ucontext.h>

typedef struct ucontext_t {
	struct ucontext_t * uc_link;
	sigset_t uc_sigmask;
	stack_t uc_stack;
	mcontext_t uc_mcontext;
} ucontext_t;

/*
XOPEN(400,700)
*/
