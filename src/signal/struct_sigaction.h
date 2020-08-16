#include <signal.h>

struct sigaction {
	void (*sa_handler)(int);
	sigset_t sa_mask;
	int sa_flags;
	#if (_POSIX_C_SOURCE >= 199506L) || (defined _XOPEN_SOURCE && defined _XOPEN_SOURCE_EXTENDED && _XOPEN_SOURCE_EXTENDED == 1)
	void (*sa_sigaction)(int, siginfo_t *, void *);	
	#else
	void (*__padding)(int, void *, void *);
	#endif
};

/*
POSIX(1)
*/
