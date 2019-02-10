#include <nonstd/syscall.h>

#define SYSCALL0(_name, _type) \
	static int _scno = -2; \
	if (_scno == -2) { _scno = ((sycall_lookup_t)__libc(LOOKUP))(_name); } \
	_type _ret = __syscall(_scno); \
	if (_ret < 0) { \
		errno = -_ret; \
		return -1; \
	} \
	return _ret
