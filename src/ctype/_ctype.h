#ifndef ___CTYPE_H__
#define ___CTYPE_H__

#include "../_assert.h"
#include "../locale/_locale.h"

typedef enum {
	CT_ALPHA = (1 << 0),
	CT_CNTRL = (1 << 1),
	CT_DIGIT = (1 << 2),
	CT_GRAPH = (1 << 3),
	CT_LOWER = (1 << 4),
	CT_PRINT = (1 << 5),
	CT_PUNCT = (1 << 6),
	CT_SPACE = (1 << 7),
	CT_UPPER = (1 << 8),
	CT_XDIGIT = (1 << 9),
	CT_BLANK = (1 << 10),
} ctype_t;

#endif
