#if 0

#include "_grp.h"

#ifndef _XOPEN_SOURCE
#undef getgrent
#define getgrent __getgrent
#include "getgrent.c"
#endif

struct __grp __grp =
{
	NULL,
	{ 0 },
	getgrent,
	{ 0 },
};

/*
POSIX(1)
*/


#endif
