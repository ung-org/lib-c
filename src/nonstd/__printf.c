#include <nonstd/io.h>

#define __printf(_opts, _fmt, _ap) \
	((int (*)(struct io_options*, const char*, va_list))__libc(PRINTF))(_opts, _fmt, _ap)
