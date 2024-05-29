#include <stddef.h>
#include <signal.h>
#include "_syscall.h"
#include "_safety.h"

GCC_SSE_HACK
int sigaction(int sig, const struct sigaction * restrict act, struct sigaction * restrict oact)
{
	SIGNAL_SAFE(-1);

	struct linux_action {
		union {
			void (*handler)(int);
			void (*action)(int, siginfo_t *, void *);
		} fn;
		unsigned long flags;
		void (*restorer)(void);
		sigset_t mask;
	};

	SYSCALL_NUMBER(scno, sigaction, -1);
	struct linux_action a = { 0 }, o = { 0 };
	int ret = -1;

	a.fn.handler = act->sa_handler;
	#ifdef SA_SIGINFO
	if (act->sa_flags & SA_SIGINFO) {
		a.fn.action = act->sa_sigaction;
	}
	#endif

	/* SA_RESTORER seems to be required for sigaction to *actually* work on Linux */
	a.flags = act->sa_flags | SA_RESTORER;
	a.mask = act->sa_mask;

	ret = __syscall(scno, sig, &a, oact ? &o : NULL, /* 8 */ sizeof(act->sa_mask), 0, 0);
	if (ret < 0) {
		errno = -ret;
		return -1;
	}

	if (oact != NULL) {
		oact->sa_handler = o.fn.handler;
		#ifdef SA_SIGINFO
		if (o.flags & SA_SIGINFO) {
			oact->sa_sigaction = o.fn.action;
		}
		#endif

		oact->sa_flags = o.flags;
		oact->sa_mask = o.mask;
	}

	return 0;
}

/*
POSIX(1)
*/
