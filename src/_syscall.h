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

#define __sys_chdir 80
#define __sys_chmod 90
#define __sys_chown 92
#define __sys_close 3

#define __sys_dup2 33

#define __sys_execve 59
#define __sys_exit 60

#define __sys_fcntl 72
#define __sys_fork 57
#define __sys_fstat 5

#define __sys_getcwd 79
#define __sys_getdents 78
#define __sys_getegid 108
#define __sys_geteuid 107
#define __sys_getgid 104
#define __sys_getgroups 115
#define __sys_getpgrp 111
#define __sys_getpgid 121
#define __sys_getpid 39
#define __sys_getppid 110
#define __sys_getuid 102

#define __sys_kill 62

#define __sys_link 86
#define __sys_lseek 8

#define __sys_mkdir 83
#define __sys_mknod 133
#define __sys_mmap 9
#define __sys_munmap 11

#define __sys_nanosleep 35
/* needed for POSIX < 199309 when nanosleep becomes __nanosleep */
#define __sys___nanosleep 35	

#define __sys_open 2

#define __sys_pause 34
#define __sys_pipe 22

#define __sys_read 0
#define __sys_readlink 89
#define __sys_rename 82
#define __sys_rmdir 84

#define __sys_setgid 106
#define __sys_setpgid 109
#define __sys_setsid 112
#define __sys_setuid 105
#define __sys_sigaction 13
#define __sys_sigpending 127
#define __sys_sigprocmask 14
#define __sys_sigsuspend 130
#define __sys_stat 4

#define __sys_time 201

#define __sys_umask 95
#define __sys_unlink 87

#define __sys_waitid 247
#define __sys_write 1
#endif

#define __syscall_lookup(_name) (__sys_##_name)

#endif
