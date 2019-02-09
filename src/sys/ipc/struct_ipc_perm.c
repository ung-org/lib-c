#include <sys/ipc.h>

struct ipc_perm {
	uid_t uid;	/* Owner's user ID */
	gid_t gid;	/* Owner's group ID */
	uid_t cuid;	/* Creator's user ID */
	uid_t cgid;	/* Creator's group ID */
	mode_t mode;	/* Read/write permission */
};

/*
XOPEN(4)
*/
