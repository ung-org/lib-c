#include <stropts.h>

struct strrecvfd {
	int fd;
	uid_t uid;
	gid_t gid;
};

/*
XOPEN(400)
*/
