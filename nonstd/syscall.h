#ifndef __NONSTD_SYSCALL_H__
#define __NONSTD_SYSCALL_H__

#include <errno.h>
#include "nonstd/types.h"

#ifndef ENOSYS
#define ENOSYS 10
#endif

#define SCNO(_var, _name, _notfound) static int _var = -2; do { \
	if ((_var) == -2) { (_var) = __libc.syscall_lookup((_name)); } \
	if ((_var) == -1) { errno = ENOSYS; return (_notfound); } \
	} while (0)

#define SCNOFAIL() static int _scno = -2; \
	if (_scno == -2) { _scno = __libc.syscall_lookup(__func__); } \
	return __libc.syscall(_scno)

#define SC(_type, ...) static int _scno = -2; \
	if (_scno == -2) { _scno = __libc.syscall_lookup(__func__); } \
	_type _ret = __libc.syscall(_scno, __VA_ARGS__); \
	if (_ret < 0) { \
		errno = -_ret; \
		return -1; \
	} \
	return _ret

#define SC0(_type) static int _scno = -2; \
	if (_scno == -2) { _scno = __libc.syscall_lookup(__func__); } \
	_type __ret = __libc.syscall(_scno); \
	if (_ret < 0) { \
		errno = -_ret; \
		return -1; \
	} \
	return _ret

#endif
