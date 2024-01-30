#if 0

#include <stddef.h>
#include <sys/types.h>
#include <signal.h>
#include "_syscall.h"

int sigaction(int sig, const struct sigaction * restrict act, struct sigaction * restrict oact)
{
	SIGNAL_SAFE(-1);

	struct linux_action {
		union {
			void (*handler)(int);
			void (*action)(int, struct sigaction *, void *);
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
	#endif

	a.flags = act->sa_flags;
	a.mask = act->sa_mask;

	ret = __syscall(scno, sig, &a, &o, sizeof(act->sa_mask), 0, 0);
	if (ret != -1 && oact != NULL) {
		oact->sa_handler = o.fn.handler;
		#ifdef SA_SIGINFO
		if (o.flags & SA_SIGINFO) {
			oact->sa_sigaction = o.fn.action;
		}
		#endif

		oact->sa_flags = o.flags;
		oact->sa_mask = o.mask;
	}

	return ret;
}

/*
POSIX(1)
*/


#endif
