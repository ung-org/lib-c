#ifndef ___CTYPE_H__
#define ___CTYPE_H__

#include <limits.h>
#include <stdio.h>

#include "locale/_locale.h"
#include "_safety.h"

#ifdef NDEBUG
#define ASSERT_REPRESENTABLE(_n, _min, _max, _type, _sentinel) (void)
#else
#define ASSERT_REPRESENTABLE(_n, _min, _max, _type, _sentinel) do { \
	if (!(((_n) == (_sentinel)) || (((_min) <= (_n)) && ((_n) <= (_max))))) { \
		__undefined("In call to %s(), parameter %s (value 0x%ju) is not representable as a %s (range [%s, %s]) or exactly %s", __func__, #_n, (uintmax_t)(_n), #_type, #_min, #_max, #_sentinel); \
	} \
} while (0)                                                                       
#endif

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

/*
STDC(-1)
*/

#endif
