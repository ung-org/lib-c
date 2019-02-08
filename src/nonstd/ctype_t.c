#include <nonstd/ctype.h>

typedef enum {
	ALPHA = (1 << 0),
	CNTRL = (1 << 1),
	DIGIT = (1 << 2),
	GRAPH = (1 << 3),
	LOWER = (1 << 4),
	PRINT = (1 << 5),
	PUNCT = (1 << 6),
	SPACE = (1 << 7),
	UPPER = (1 << 8),
	XDIGIT = (1 << 9),
	BLANK = (1 << 10),
} ctype_t;
