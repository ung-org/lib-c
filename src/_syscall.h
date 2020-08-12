#ifndef ___SYSCALL_H__
#define ___SYSCALL_H__

#include <errno.h>
#ifndef ENOSYS
#include "errno/ENOSYS.c"
#endif

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

#if defined __linux__ && defined __x86_64__
#define __sys_alarm 37
#define __sys_brk 12
#define __sys_chdir 80
#define __sys_chmod 90
#define __sys_chown 92
#define __sys_chroot 161
#define __sys_clock_adjtime 305
#define __sys_clock_getres 229
#define __sys_clock_gettime 228
#define __sys_clock_nanosleep 230
#define __sys_clock_settime 227
#define __sys_close 3
#define __sys_dup 32
#define __sys_dup2 33
#define __sys_execve 59
#define __sys_execveat 322
#define __sys_exit 60
#define __sys_fchdir 81
#define __sys_fchmod 91
#define __sys_fchmodat 268
#define __sys_fchown 93
#define __sys_fchownat 260
#define __sys_fcntl 72
#define __sys_flock 73
#define __sys_fork 57
#define __sys_fstat 5
#define __sys_fstatfs 138
#define __sys_fsync 74
#define __sys_ftruncate 77
#define __sys_getcwd 79
#define __sys_getegid 108
#define __sys_geteuid 107
#define __sys_getgid 104
#define __sys_getgroups 115
#define __sys_getpgid 121
#define __sys_getpgrp 111
#define __sys_getpid 39
#define __sys_getppid 110
#define __sys_getsid 124
#define __sys_getuid 102
#define __sys_kill 62
#define __sys_link 86
#define __sys_linkat 265
#define __sys_lseek 8
#define __sys_lstat 6
#define __sys_mkdir 83
#define __sys_mkdirat 258
#define __sys_mknod 133
#define __sys_mknodat 259
#define __sys_mmap 9
#define __sys_modify_ldt 154
#define __sys_munmap 11
#define __sys_nanosleep 35
#define __sys___nanosleep 35
#define __sys_open 2
#define __sys_openat 257
#define __sys_pause 34
#define __sys_pipe 22
#define __sys_read 0
#define __sys_readlink 89
#define __sys_readlinkat 267
#define __sys_rename 82
#define __sys_renameat 264
#define __sys_rmdir 84
#define __sys_setgid 106
#define __sys_setpgid 109
#define __sys_setregid 114
#define __sys_setresgid 119
#define __sys_setresuid 117
#define __sys_setreuid 113
#define __sys_setsid 112
#define __sys_setuid 105
#define __sys_stat 4
#define __sys_statfs 137
#define __sys_swapoff 168
#define __sys_symlink 88
#define __sys_symlinkat 266
#define __sys_time 201
#define __sys_umask 95
#define __sys_uname 63
#define __sys_unlink 87
#define __sys_unlinkat 263
#define __sys_wait4 61
#define __sys_waitid 247
#define __sys_write 1
#endif

#define __syscall_lookup(_name) (__sys_##_name)

#endif
