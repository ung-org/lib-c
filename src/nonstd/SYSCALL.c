#include <nonstd/syscall.h>

#define SYSCALL(_name, _type, ...)
	static int _scno = -2; \
	if (_scno == -2) { _scno = ((syscall_lookup_t)__libc(SYSCALL_LOOKUP))(_name); } \
	_type _ret = __syscall(_scno, __VA_ARGS__); \
	if (_ret < 0) { \
		errno = -_ret; \
		return -1; \
	} \
	return _ret
