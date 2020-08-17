#include <sys/types.h>
#include <sys/wait.h>
#include "_syscall.h"

int waitid(idtype_t idtype, id_t id, siginfo_t *infop, int options)
{
	SYSCALL(waitid, int, -1, idtype, id, infop, option, NULL, 0);
}

/*
XOPEN(400)
POSIX(200809)
*/
