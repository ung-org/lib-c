#include "sys/types.h"
/*
#include "sys/time.h"
#include "ucontext.h"
#include "signal.h"
#include <sys/wait.h>
*/
#include "_syscall.h"

#define __SYS_WAIT_H__

#include "idtype_t.c"

typedef struct siginfo siginfo_t;

int waitid(idtype_t idtype, id_t id, siginfo_t *infop, int options)
{
	SYSCALL(waitid, int, -1, idtype, id, infop, option, NULL, 0);
}

/*
XOPEN(400)
POSIX(200809)
*/
