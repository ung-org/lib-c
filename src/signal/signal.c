#include <errno.h>
#include "_signal.h"
#include "_safety.h"
#include "_syscall.h"
#include "_memperm.h"

/** set a signal handler **/

#if 1
#include "_forced/sigaction.h"

#else
/* TODO: remove this very Linux-specific crap */
	typedef struct __siginfo siginfo_t;
	struct linux_sigaction {   
		void (*sa_handler)(int);
		int sa_flags;
		void (*sa_restorer)(void);
		unsigned char sa_mask[8];
	};
#define sigaction(_sig, _act, _oact, _size) __scall4(sigaction, _sig, _act, _oact, _size)
#define SA_RESTART    0x10000000
#define SA_RESTORER   0x04000000
#endif

GCC_SSE_HACK
void (*signal(int sig, void (*func)(int)))(int)
{
	/* signal safe iff we are resetting the current signal handler */
	SIGNAL_SAFE((___signal.current == sig));

	if (sig < 0 || sig > NSIGNALS) {
		/* FIXME: should errno be set? */
		return SIG_ERR;
	}

	if ((__memperm(func) & PROT_EXEC) != PROT_EXEC) {
		UNDEFINED("signal handler is not executable");
	}

	void (*prev)(int) = ___signal.handlers[sig];
	___signal.handlers[sig] = func;

	struct sigaction act = { 0 };
	act.sa_handler = __signal_handler;
	act.sa_flags = SA_RESTART | SA_RESTORER;

	int ret = sigaction(sig, &act, NULL);
	if (ret != 0) {
		errno = -ret;
		return SIG_ERR;
	}
	
	return prev;
}

typedef void (*handler)(int);
CHECK_2(handler, SIG_ERR, signal, int, handler)

/***
sets the signal handler for the signal specified by ARGUMENT(sig) to
ARGUMENT(func).

Specifying CONSTANT(SIG_DFL) for ARGUMENT(func) resets the signal handler
to its default behavior.

Specifying CONSTANT(SIG_IGN) for ARGUMENT(func) causes the signal
ARGUMENT(sig) to be ignored.

Otherwise, ARGUMENT(func) must be a pointer to a function which takes a
single TYPE(int) argument and does not return a value. 
***/

/*
UNDEFINED(A signal handler for CONSTANT(SIGFPE) returns)
UNDEFINED(A signal handler calling standard library functions other than THIS() if the signal occurs as other than as a result of calling FUNCTION(abort) or FUNCTION(raise))
UNDEFINED(FIXME: some function calls from signal handlers)
IMPLEMENTATION(Whether signal blocking is performed when a signal occurs)
IMPLEMENTATION(Other signals corresponding to computation exceptions for which signal handlers must not return)
STDC(1)
*/
