#include "_pwd.h"

#ifndef _XOPEN_SOURCE
#undef getpwent
#define getpwent __getpwent
#include "getpwent.c"
#endif

struct __pwd __pwd =
{
	NULL,
	{ 0 },
	getpwent,
};

/*
POSIX(1)
*/
