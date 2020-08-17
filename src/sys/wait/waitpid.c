#include <sys/types.h>
#include <sys/wait.h>
#include <signal.h>
#include <unistd.h>
#include "_syscall.h"

#ifndef P_PID
#include "signal/union_sigval.h"
#include "signal/siginfo_t.h"
#include "idtype_t.h"
#include "P_PID.h"
#include "P_PGID.h"
#include "P_ALL.h"
#define getpgid(_pid) __syscall(__syscall_lookup(getpgid), _pid, 0, 0, 0, 0, 0)
#define waitid(_type, _id, _si, _opt) __syscall(__syscall_lookup(waitid), _type, _id, _si, _opt, 0, 0)
#endif

pid_t waitpid(pid_t pid, int *stat_loc, int options)
{
	/* TODO: handle WUNTRACED, is not recognized by waitid() */

	siginfo_t si = { 0 };
	idtype_t idt = P_PID;
	int ret = -1;

	if (pid == (pid_t)-1) {
		idt = P_ALL;
	} else if (pid == 0) {
		idt = P_PGID;
		pid = getpgid(0);
	} else if (pid < (pid_t)-1) {
		idt = P_PGID;
		pid = -pid;
	}

	ret = waitid(idt, pid, &si, options);
	if (stat_loc) {
		*stat_loc = si.si_status;
	}
	return ret;
}

/*
POSIX(1)
*/
