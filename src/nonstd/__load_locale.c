#include <nonstd/locale.h>

#define __load_locale(_loc, _mask, _name) \
	((char * (*)(struct __locale_t *, int, const char *))__libc(LOAD_LOCALE))(_loc, _mask, _name)
