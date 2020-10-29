#include <arpa/inet.h>
#include <errno.h>
#include <stdio.h>
#include <string.h>

const char *inet_ntop(int af, const void *restrict src, char *restrict dst, socklen_t size)
{
	if (af == AF_INET) {
		in_addr_t *a = src;
		char s[INET_ADDRSTRLEN] = "";
		if (snprintf(s, sizeof(s), "%hhu.%hhu.%hhu.%hhu",
			(*src >> 24) & 0xff,
			(*src >> 16) & 0xff,
			(*src >> 8) & 0xff,
			(*src) & 0xff) > size) {
			errno = ENOSPC;
			return NULL;
		}
		strcpy(dst, s);
		return dst;
	}

	if (af != AF_INET6) {
		errno = EAFNOSUPPORT;
		return NULL;
	}

	/*
	char s[INET6_ADDRSTRLEN] = "";
	unsigned char *a = src;
	*/
	/* do IPv6 conversion */
	return dst;
}
