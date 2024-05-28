#include "_syscall.h"
struct stat {
	int st_mode;
	char padding[1024];
};
#define stat(_f, _b)    __scall2(stat, _f, _b)
#define S_ISDIR(_m) ((_m) & 0x00)
