#ifndef ___SYSCALL_H__
#define ___SYSCALL_H__

#include <errno.h>
#ifndef ENOSYS
#include "errno/ENOSYS.c"
#endif

#include <nonstd/internal.h>

#define SYSCALL(_name, _type, _err, _a1, _a2, _a3, _a4, _a5, _a6) \
	static int _scno = -2; \
	if (_scno == -2) { \
		_scno = __syscall_lookup(_name); \
	} \
	long _ret = __syscall(_scno, _a1, _a2, _a3, _a4, _a5, _a6); \
	if (_ret < 0) { \
		errno = -_ret; \
		return _err; \
	} \
	return (_type)_ret

#define SYSCALL_NUMBER(_var, _name, _notfound) \
	static long _var = -2; \
	do { \
		if (_var == -2) { \
			(_var) = __syscall_lookup(_name); \
		} \
		if (_var == -1) { \
			errno = ENOSYS; \
			return (_notfound); } \
	} while (0)

long __syscall(long __number, ...);
long __syscall_lookup(const char *name);

#endif
