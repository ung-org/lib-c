#include <utmpx.h>

struct utmpx {
	char ut_user[];
	char ut_id[];
	char ut_line[];
	pid_t ut_pid;
	short ut_type;
	struct timeval ut_tv;
};

/*
XOPEN(400)
*/
