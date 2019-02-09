#include <signal.h>

typedef struct {
	int si_signo;
	int si_code;
	pid_t si_pid;
	uid_t si_uid;
	void *si_addr;
	int si_status;
	long si_band;
	int si_errno;
	union sigval si_value;
} siginfo_t;

/*
XOPEN(400)
POSIX(200112)
*/
