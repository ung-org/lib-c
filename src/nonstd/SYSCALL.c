#include <nonstd/syscall.h>

#define SYSCALL(_name, _type, _err, _a1, _a2, _a3, _a4, _a5, _a6) \
	static int _scno = -2; \
	if (_scno == -2) { _scno = ((syscall_lookup_t)__libc(SYSCALL_LOOKUP))(_name); } \
	long _ret = __syscall(_scno, _a1, _a2, _a3, _a4, _a5, _a6); \
	if (_ret < 0) { \
		errno = -_ret; \
		return _err; \
	} \
	return (_type)_ret
