#include <nonstd/syscall.h>

#define SYSCALL_NUMBER(_var, _name, _notfound) long _var = _notfound

	static int _var = -2; do { \
	if (_var == -2) { (_var) = __libc(SYSCALL_LOOKUP)(_name); } \
	if (_var == -1) { errno = ENOSYS; return (_notfound); } \
	} while (0)
