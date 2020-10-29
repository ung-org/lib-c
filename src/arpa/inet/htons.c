#include <arpa/inet.h>

uint16_t htons(uint16_t hostshort)
{
	union {
		uint16_t u;
		unsigned char c[sizeof(uint16_t)];
	} u;

	u.c[0] = (hostshort >> 8) & 0xff;
	u.c[1] = (hostshort) & 0xff;

	return u.u;
}
