#include <sys/types.h>
#include <regex.h>

size_t regerror(int errcode, const regex_t * restrict preg, char * restrict errbuf, size_t errbuf_size)
{
	(void)errcode;
	(void)preg;
	(void)errbuf;
	(void)errbuf_size;
	return 0;
}

/*
POSIX(2)
*/

