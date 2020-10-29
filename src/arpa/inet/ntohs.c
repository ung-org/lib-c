#include <arpa/inet.h>

uint16_t ntohs(uint16_t netshort)
{
	union {
		uint16_t u;
		unsigned char c[sizeof(uint16_t)];
	} u = { netshort };

	return (u.c[0] << 8) | u.c[1];
}
