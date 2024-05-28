#if __STDC_VERSION__ >= 199901L
#include <inttypes.h>
#else
#include "stdint/intmax_t.h"
#include "stdint/uintmax_t.h"
#include "stdint/intptr_t.h"
#include "stdint/UINTMAX_MAX.h"
#define strtoumax __strtoumax
#include "inttypes/strtoumax.c"
#endif
