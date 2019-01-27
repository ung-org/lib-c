#ifndef __UNISTD_H__
#define __UNISTD_H__

#include <stddef.h>
#include "nonstd/syscall.h"

#define open(path, mode, flags)         __libc.syscall(__libc.syscall_lookup("open"), path, mode, flags)
#define close(fd)                       __libc.syscall(__libc.syscall_lookup("close"), fd)
#define write(fd, buf, nbyte)           __libc.syscall(__libc.syscall_lookup("write"), fd, buf, nbyte)
#define read(fd, buf, nbyte)            __libc.syscall(__libc.syscall_lookup("read"), fd, buf, nbyte)
#define kill(pid, sig)                  __libc.syscall(__libc.syscall_lookup("kill"), pid, sig)
#define getpid()                        __libc.syscall(__libc.syscall_lookup("getpid"))
#define _exit(status)                   __libc.syscall(__libc.syscall_lookup("exit"), status)

#endif
