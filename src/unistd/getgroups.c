#include "stddef.h"
#include "sys/types.h"
#include <unistd.h>
#include "errno.h"
#include "nonstd/syscall.h"
#include "nonstd/assert.h"

int getgroups(int gidsetsize, gid_t grouplist[])
{
	if (gidsetsize != 0) {
		ASSERT_NONNULL(grouplist);
	}
	SC(int, gidsetsize, grouplist);
}
/*
POSIX(1)
*/
