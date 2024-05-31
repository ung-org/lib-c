#include <inttypes.h>
#include <stdio.h>
#include "_memperm.h"

int __memperm(void *ptr)
{
	uintptr_t addr = (uintptr_t)ptr;
	int ret = PROT_NONE;

	FILE *map = fopen("/proc/self/maps", "r");
	if (map == NULL) {
		return -1;
	}

	while (!feof(map)) {
		uintmax_t low = 0;
		uintmax_t high = 0;
		char perms[5];
		fscanf(map, "%jx-%jx %4s%*s\n", &low, &high, perms);
		if (low <= addr && high >= addr) {
			if (perms[0] == 'r') {
				ret |= PROT_READ;
			}
			if (perms[1] == 'w') {
				ret |= PROT_WRITE;
			}
			if (perms[2] == 'x') {
				ret |= PROT_EXEC;
			}
			break;
		}
	}

	fclose(map);
	return ret;
}
