#include <nonstd/syscall.h>

#define SYSCALL_NOFAIL(_name)
	static int _scno = -2; \
	if (_scno == -2) { _scno = __libc(SYSCALL_LOOKUP)(_name); } \
	return __libc(SYSCALL)(_scno)
