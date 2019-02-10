#include <nonstd/syscall.h>

#define SYSCALL_NUMBER(_var, _name, _notfound) \
	static long _var = -2; do { \
	if (_var == -2) { (_var) = ((long (*)(char*))__libc(SYSCALL_LOOKUP))(_name); } \
	if (_var == -1) { errno = ENOSYS; return (_notfound); } \
	} while (0)
