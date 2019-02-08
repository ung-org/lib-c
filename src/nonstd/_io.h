#ifndef __INTERNAL_IO_H__
#define __INTERNAL_IO_H__

#include "nonstd/io.h"
#include "stdarg.h"

#if defined __STDC_VERSION__ && 199909L <= __STDC_VERSION__
#include "inttypes.h"
#else
#include "stdlib.h"
typedef unsigned long int uintmax_t;
typedef long int intmax_t;
typedef long int intptr_t;
typedef long int ptrdiff_t;
#define strtoumax(_s, _endptr, _base) strtoul(_s, _endptr, _base)
#endif

#if defined _POSIX_SOURCE || defined _POSIX_C_SOURCE || defined _XOPEN_SOURCE
#include "unistd.h"
#else
#define write(fd, b, s)
#endif

#endif
