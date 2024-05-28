
#ifdef __STDC_VERSION__
#include <wchar.h>
#else
static size_t wcslen(const wchar_t *);
#include "wchar/wcslen.c"
#endif

