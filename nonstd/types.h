#ifndef __NONSTD_TYPES_H__
#define __NONSTD_TYPES_H__

#include <stdio.h>	/* for FILE */
#include <stdarg.h>	/* for va_list */

#include "nonstd/FILE.h"

typedef int errno_t;
typedef void (*constraint_handler_t)(const char * restrict msg, void * restrict ptr, errno_t error);

struct __constraint_info {
	const char *func;
};

struct __locale_t {
	int mask;
	char *all;
	char *collate;
	char *ctype;
	unsigned char *ctattr;
	unsigned char *ctoupper;
	unsigned char *ctolower;
	char *message;
	char *monetary;
	char *numeric;
	char *time;
};

struct priscn_options {
	const char *fnname;
	char *string;
	FILE *stream;
	size_t maxlen;
	int fd;
	int flags;
};

struct __fopen_options {
	const char *fnname;
	char *path;
	int fd;
	FILE *stream;
};

struct per_thread {
	int id;
	int err;
	struct __locale_t *locale;
};

struct libc {
	const struct {
		int ctattr;
		int ctoupper;
		int ctolower;
		int lower;
		int punct;
		int space;
		int upper;
		int xdigit;
		unsigned char *(*getmap)(int);
	} ctype;
	struct {
		struct __locale_t *global;
	} locale;
	struct {
		FILE files[FOPEN_MAX];
		FILE *lastfile;
		int nopen;
		int (*printf)(struct priscn_options *, const char *, va_list);
		int (*scanf)(struct priscn_options *, const char *, va_list);
		FILE *(*fopen)(struct __fopen_options *);
	} stdio;
	struct {
		unsigned int rand;
		struct atexit {
			void (*fn)(void);
			struct atexit *next;
			struct atexit *prev;
		} atexit[32], at_quick_exit[32];
		struct atexit *atexit_tail;
		struct atexit *at_quick_exit_tail;
		int atexit_max;
		int natexit;
		int nat_quick_exit;
		constraint_handler_t constraint_handler;
	} stdlib;
	struct {
		const char **wctype;
		const int nwctype;
		const char **wctrans;
		const int nwctrans;
	} wctype;
	struct {
		int nopen;
		struct fd {
			int fd;
			char *name;
			char *dir;
		} *fds;
		const char **confstr;
		const int nconfstr;
	} unistd;
	char* (*atpath)(int fd, const char *path);
	long (*syscall_lookup)(const char *call);
	long (*syscall)(long call, ...);
	/*
	int (*syscall_bynum)(int call, ...);
	int (*syscall_byname)(const char *call, ...);
	int (*syscall_arglist)(int call, va_list arg);
	*/
	struct per_thread *(*per_thread)(void);
};
extern struct libc __libc;

#endif
