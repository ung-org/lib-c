#include <nonstd/io.h>

#define __scanf(_opts, _fmt, _ap) \
	((int (*)(struct io_options*, const char*, va_list))__libc(SCANF))(_opts, _fmt, _ap)
