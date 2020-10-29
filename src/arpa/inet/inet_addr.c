#include <arpa/inet.h>
#include <stdlib.h>

in_addr_t inet_addr(const char *cp)
{
	unsigned long parts[4] = { 0 };
	in_addr_t addr = (in_addr_t)(-1);
	size_t part = 0;

	while (*cp && part < sizeof(parts)) {
		char *next = NULL;
		parts[part] = strtoul(cp, &next, 0);
		if (*next == '.') {
			part++;
			cp = next + 1;
		} else {
			cp = next;
		}

		/* check for error */
	}

	switch (part) {
	case 0:
		addr = htonl(parts[0]);
		break;

	case 1:
		if (parts[0] > 0xff || parts[1] > 0xffffff) {
			break;
		}
		addr = htonl((parts[0] << 24) | parts[1]);
		break;

	case 2:
		if (parts[0] > 0xff || parts[1] > 0xff || parts[2] > 0xffff) {
			break;
		}
		addr = htonl((parts[0] << 24) | (parts[1] << 16) | parts[2]);
		break;

	case 3:
		if (parts[0] > 0xff || parts[1] > 0xff || parts[2] > 0xff || parts[3] > 0xff) {
			break;
		}
		addr = htonl((parts[0] << 24) | (parts[1] << 16) | (parts[2] << 8) | parts[3]);
		break;

	default:
		break;
	}

	return addr;
}
