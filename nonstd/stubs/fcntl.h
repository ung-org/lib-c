#ifndef __FCNTL_H__
#define __FCNTL_H__
#include "nonstd/types.h"

#define F_DUPFD 1
#define F_DUPFD_CLOEXEC 2
#define F_GETFD 3
#define F_SETFD 4
#define F_GETFL 5
#define F_SETFL 6
#define F_GETLK 7
#define F_SETLK 8
#define F_SETLKW 9
#define F_GETOWN 10
#define F_SETOWN 11

#define FD_CLOEXEC 1

#define F_RDLCK 1
#define F_UNLCK 2
#define F_WRLCK 3

#define O_CLOEXEC 02000000
#define O_CREAT (1 << 1)
#define O_DIRECTORY (1 << 2)
#define O_EXCL (1 << 3)
#define O_NCTTY (1 << 4)
#define O_NOFOLLOW (1 << 5)
#define O_TRUNC (1 << 6)
#define O_TTY_INIT (1 << 7)

#define O_APPEND (1 << 8)
#define O_DSYNC (1 << 9)
#define O_NONBLOCK (1 << 10)
#define O_RSYNC (1 << 11)
#define O_SYNC (1 << 12)

#define O_EXEC (1 << 13)
#define O_RDONLY (1 << 14)
#define O_RDWR 02
#define O_SEARCH (1 << 16)
#define O_WRONLY (1 << 17)

#define O_ACCMODE (O_EXEC|O_RDONLY|O_RDWR|O_SEARCH|O_WRONLY)

#define open(path, mode, flags)         __libc.syscall(__libc.syscall_lookup("open"), path, mode, flags)

#endif
