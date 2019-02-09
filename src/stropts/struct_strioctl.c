#include <stropts.h>

struct strioctl {
	int ic_cmd;
	int ic_timeout;
	int ic_len;
	char *ic_dp;
};

/*
XOPEN(400)
*/
