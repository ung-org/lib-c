#include <arpa/inet.h>
#include <errno.h>
#include <stdlib.h>

int inet_pton(int af, const char *restrict src, void *restrict dst)
{
	if (af == AF_INET) {
		in_addr_t *a = dst;
		unsigned long parts[4] = { 0 };
		size_t part = 0;

		while (*src && part < sizeof(parts)) {
			char *next = NULL;
			parts[part] = strtoul(src, &next, 0);
			if (parts[part] > 255) {
				return 0;
			}

			if (*next == '.') {
				part++;
				src = next + 1;
			} else {
				src = next;
			}

		}

		if (part != sizeof(parts) - 1) {
			return 0;
		}

		*a =  htonl((parts[0] << 24) | (parts[1] << 16) | (parts[2] << 8) | parts[3]);
		return 1;
	}

	if (af != AF_INET6) {
		errno = EAFNOSUPPORT;
		return -1;
	}

	/* do ipv6 conversion */
	return 1;
}
