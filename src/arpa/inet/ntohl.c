#include <arpa/inet.h>

uint32_t ntohl(uint32_t netlong)
{
	union {
		uint32_t u;
		unsigned char c[sizeof(uint32_t)];
	} u = { netlong };

	return (u.c[0] << 24) | (u.c[1] << 16) | (u.c[2] << 8) | u.c[3];
}
