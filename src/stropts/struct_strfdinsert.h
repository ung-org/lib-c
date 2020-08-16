#include <stropts.h>

struct strfdinsert {
	struct strbuf ctlbuf;
	struct strbuf databuf;
	long flags;
	int fildes;
	int offset;
};

/*
XOPEN(400)
*/
