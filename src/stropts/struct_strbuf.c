#include <stropts.h>

struct strbuf {
	int maxlen;
	int len;
	char *buf;
};

/*
XOPEN(400)
*/
