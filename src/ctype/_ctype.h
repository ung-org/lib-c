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
		UNDEFINED("In call to %s(), parameter %s (value 0x%ju) is not representable as a %s (range [%s, %s]) or exactly %s", __func__, #_n, (uintmax_t)(_n), #_type, #_min, #_max, #_sentinel); \
	} \
} while (0)                                                                       
#endif

typedef enum {
	CT_ALPHA = 0,
	CT_CNTRL = 1,
	CT_DIGIT = 2,
	CT_GRAPH = 3,
	CT_LOWER = 4,
	CT_PRINT = 5,
	CT_PUNCT = 6,
	CT_SPACE = 7,
	CT_UPPER = 8,
	CT_XDIGIT = 9,
	CT_BLANK = 10,
	CT_ALNUM = 11,
} c_type;

typedef enum {
	CTM_ALPHA = (1 << CT_ALPHA),
	CTM_CNTRL = (1 << CT_CNTRL),
	CTM_DIGIT = (1 << CT_DIGIT),
	CTM_GRAPH = (1 << CT_GRAPH),
	CTM_LOWER = (1 << CT_LOWER),
	CTM_PRINT = (1 << CT_PRINT),
	CTM_PUNCT = (1 << CT_PUNCT),
	CTM_SPACE = (1 << CT_SPACE),
	CTM_UPPER = (1 << CT_UPPER),
	CTM_XDIGIT = (1 << CT_XDIGIT),
	CTM_BLANK = (1 << CT_BLANK),
} c_type_mask;

/*
STDC(-1)
*/

#endif
