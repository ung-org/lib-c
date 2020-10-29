#include <arpa/inet.h>
#include <netinet/in.h>
#include <stdio.h>

char *inet_ntoa(struct in_addr in)
{
	static char s[INET_ADDRSTRLEN] = "";
	sprintf(s, "%hhu.%hhu.%hhu.%hhu",
		(in.s_addr >> 24) & 0xff,
		(in.s_addr >> 16) & 0xff,
		(in.s_addr >> 8) & 0xff,
		(in.s_addr) & 0xff);
	return s;
}
