#include <strings.h>

int ffs(int i)
{
	int bit = 0;

	if (i == 0) {
		return 0;
	}

	while (!(i & (1 << bit))) {
		bit++;
	}

	return bit;
}

/*
XOPEN(400)
*/
