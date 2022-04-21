#ifndef ___FTW_H__
#define ___FTW_H__

#define __FTW_OLD	(-1)

int __ftw(const char *path, int (*fn)(), int fd_limit, int flags);

#endif
