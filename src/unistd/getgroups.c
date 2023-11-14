#if 0

#include <sys/types.h>
#include "_syscall.h"
#include "_assert.h"

int getgroups(int gidsetsize, gid_t grouplist[])
{
	if (gidsetsize != 0) {
		ASSERT_NONNULL(grouplist);
	}
	SYSCALL(getgroups, int, -1, gidsetsize, grouplist, 0, 0, 0, 0);
}
/*
POSIX(1)
*/


#endif
