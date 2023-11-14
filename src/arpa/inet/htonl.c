#if 0

#include <arpa/inet.h>

uint32_t htonl(uint32_t hostlong)
{
	union {
		uint32_t u;
		unsigned char c[sizeof(uint32_t)];
	} u;

	u.c[0] = (hostlong >> 24) & 0xff;
	u.c[1] = (hostlong >> 16) & 0xff;
	u.c[2] = (hostlong >> 8) & 0xff;
	u.c[3] = (hostlong) & 0xff;

	return u.u;
}


#endif
