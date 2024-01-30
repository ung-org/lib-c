#undef __UNG_INTERNAL__

#include <ctype.h>
#include <locale.h>
#include <math.h>	/* TODO */
#include <setjmp.h>
#include <signal.h>
#include <stdarg.h>
#include <stdio.h>
#include <stdlib.h>	/* TODO */
#include <string.h>
#include <time.h>	/* TODO */

#if __STDC_VERSION__ >= 199409L
#include <wchar.h>	/* TODO */
#include <wctype.h>	/* TODO */
#endif

#if __STDC_VERSION__ >= 199901L
#include <complex.h>	/* TODO */
#include <fenv.h>
#include <inttypes.h>
#endif

#if __STDC_VERSION__ >= 201112
#include <threads.h>	/* TODO */
#include <uchar.h>	/* TODO */
#endif

#include "_safety.h"

extern char *(gets)(char*);

#define F(fn) (int(*)())(fn)

int __checked_i(const char *file, const char *func, unsigned long long line, int (*fn)(), ...)
{
	va_list ap;
	int ret = -1;

	__checked_call.func = (char*)func;
	__checked_call.file = (char*)file;
	__checked_call.line = line;

	va_start(ap, fn);

	if (fn == F(isalpha)
		|| fn == F(isdigit)
		|| fn == F(isupper)
		|| fn == F(islower)
		|| fn == F(toupper)
		|| fn == F(tolower)
		/*
		|| fn == F(feclearexcept)
		|| fn == F(feraiseexcept)
		|| fn == F(fesetround)
		|| fn == F(fetestexcept)
		*/
		|| fn == F(raise)
		|| fn == F(putchar)
		|| fn == F(abs)
		) {
		int arg = va_arg(ap, int);
		ret = fn(arg);
	/*
	} else if (fn == F(fegetenv)
		|| fn == F(feholdexcept)
		|| fn == F(fesetenv)
		|| fn == F(feupdateenv)
		) {
		fenv_t *arg = va_arg(ap, fenv_t *);
		ret = fn(arg);
	} else if (fn == F(fegetexceptflag)
		|| fn == F(fesetexceptflag)
		) {
		fexcept_t *fe = va_arg(ap, fexcept_t *);
		int i = va_arg(ap, int);
		ret = fn(fe, i);
	*/
	} else if (/*fn == F(fegetround)
		|| */fn == F(getchar)
		) {
		ret = fn();
	} else if (fn == F(fclose)
		|| fn == F(feof)
		|| fn == F(ferror)
		|| fn == F(fflush)
		|| fn == F(fgetc)
		/* || fn == F(getc) */
		) {
		FILE *f = va_arg(ap, FILE *);
		ret = fn(f);
	} else if (fn == F(fgetpos)
		|| fn == F(fsetpos)
		) {
		FILE *f = va_arg(ap, FILE *);
		fpos_t *fp = va_arg(ap, fpos_t *);
		ret = fn(f, fp);
	} else if (fn == F(fputc)
		|| fn == F(putc)
		|| fn == F(ungetc)
		) {
		int c = va_arg(ap, int);
		FILE *f = va_arg(ap, FILE *);
		ret = fn(c, f);
	} else if (fn == F(fputs)) {
		const char *s = va_arg(ap, const char *);
		FILE *f = va_arg(ap, FILE *);
		ret = fn(s, f);
	} else if (fn == F(fseek)) {
		FILE *f = va_arg(ap, FILE *);
		int o = va_arg(ap, int);
		int w = va_arg(ap, int);
		ret = fn(f, o, w);
	} else if (fn == F(puts)
		|| fn == F(remove)
		) {
		const char *s = va_arg(ap, const char *);
		ret = fn(s);
	} else if (fn == F(rename)
		|| fn == F(strcmp)
		|| fn == F(strcoll)
		) {
		char *o = va_arg(ap, char *);
		char *n = va_arg(ap, char *);
		ret = fn(o, n);
	} else if (fn == F(setvbuf)) {
		FILE *f = va_arg(ap, FILE *);
		char *b = va_arg(ap, char *);
		int m = va_arg(ap, int);
		size_t s = va_arg(ap, size_t);
		ret = fn(f, b, m, s);
	} else if (fn == F(memcmp)) {
		const void *p1 = va_arg(ap, const void *);
		const void *p2 = va_arg(ap, const void *);
		size_t n = va_arg(ap, size_t);
		ret = fn(p1, p2, n);
	} else if (fn == F(strncmp)) {
		const char *p1 = va_arg(ap, const char *);
		const char *p2 = va_arg(ap, const char *);
		size_t n = va_arg(ap, size_t);
		ret = fn(p1, p2, n);
	/*
	} else if (fn == F(atexit)) {
		void *p = va_arg(ap, void *);
		ret = fn(p);
	*/
	} else {
		(fprintf)(stderr, "Unwrapped function %s\n", func);
		(abort());
	}

	va_end(ap);

	__checked_call.func = NULL;
	__checked_call.file = NULL;
	__checked_call.line = 0;

	return ret;
}

/*
STDC(0)
*/

#if __STDC_VERSION__ >= 199901L
#undef F
#define F(fn) (intmax_t(*)())(fn)
intmax_t __checked_im(const char *file, const char *func, unsigned long long line, intmax_t (*fn)(), ...)
{
	va_list ap;
	intmax_t ret = -1;

	__checked_call.func = (char*)func;
	__checked_call.file = (char*)file;
	__checked_call.line = line;

	va_start(ap, fn);

	if (fn == F(imaxabs)) {
		intmax_t i = va_arg(ap, intmax_t);
		ret = fn(i);
	} else if (fn == F(strtoimax)) {
		const char *s = va_arg(ap, const char *);
		char **end = va_arg(ap, char **);
		int i = va_arg(ap, int);
		ret = fn(s, end, i);
	} else if (fn == F(wcstoimax)) {
		const wchar_t *s = va_arg(ap, const wchar_t *);
		wchar_t **end = va_arg(ap, wchar_t **);
		int i = va_arg(ap, int);
		ret = fn(s, end, i);
	} else if (fn == F(strcspn)) {
		char *s1 = va_arg(ap, char *);
		char *s2 = va_arg(ap, char *);
		ret = fn(s1, s2);
	} else {
		(fprintf)(stderr, "Unwrapped function %s\n", func);
		(abort());
	}

	va_end(ap);
	__checked_call.func = NULL;
	__checked_call.file = NULL;
	__checked_call.line = 0;

	return ret;
}

#undef F
#define F(fn) (uintmax_t(*)())(fn)
uintmax_t __checked_uim(const char *file, const char *func, unsigned long long line, uintmax_t (*fn)(), ...)
{
	va_list ap;
	uintmax_t ret = 0;

	__checked_call.func = (char*)func;
	__checked_call.file = (char*)file;
	__checked_call.line = line;

	va_start(ap, fn);

	if (fn == F(strtoumax)) {
		const char *s = va_arg(ap, const char *);
		char **end = va_arg(ap, char **);
		int i = va_arg(ap, int);
		ret = fn(s, end, i);
	} else if (fn == F(wcstoumax)) {
		const wchar_t *s = va_arg(ap, const wchar_t *);
		wchar_t **end = va_arg(ap, wchar_t **);
		int i = va_arg(ap, int);
		ret = fn(s, end, i);
	} else {
		(fprintf)(stderr, "Unwrapped function %s\n", func);
		(abort());
	}

	va_end(ap);
	__checked_call.func = NULL;
	__checked_call.file = NULL;
	__checked_call.line = 0;

	return ret;
}

#undef F
#define F(fn) (imaxdiv_t(*)())(fn)
imaxdiv_t __checked_imd(const char *file, const char *func, unsigned long long line, imaxdiv_t (*fn)(), ...)
{
	va_list ap;
	imaxdiv_t ret = {0};

	__checked_call.func = (char*)func;
	__checked_call.file = (char*)file;
	__checked_call.line = line;

	va_start(ap, fn);

	if (fn == F(imaxdiv)) {
		intmax_t n = va_arg(ap, intmax_t);
		intmax_t d = va_arg(ap, intmax_t);
		ret = fn(n, d);
	} else {
		(fprintf)(stderr, "Unwrapped function %s\n", func);
		(abort());
	}

	va_end(ap);
	__checked_call.func = NULL;
	__checked_call.file = NULL;
	__checked_call.line = 0;

	return ret;
}
#endif

#undef F
#define F(fn) (void *(*)())(fn)
void *__checked_p(const char *file, const char *func, unsigned long long line, void * (*fn)(), ...)
{
	va_list ap;
	void *ret = NULL;

	__checked_call.func = (char*)func;
	__checked_call.file = (char*)file;
	__checked_call.line = line;

	va_start(ap, fn);

	if (fn == F(localeconv)
		|| fn == F(tmpfile)
		) {
		ret = fn();
	} else if (fn == F(setlocale)) {
		int i = va_arg(ap, int);
		const char *s = va_arg(ap, const char *);
		ret = fn(i, s);
	} else if (fn == F(signal)) {
		int i = va_arg(ap, int);
		void *p = va_arg(ap, void *);
		ret = fn(i, p);
	} else if (fn == F(fgets)) {
		char *s = va_arg(ap, char *);
		int n = va_arg(ap, int);
		FILE *f = va_arg(ap, FILE *);
		ret = fn(s, n, f);
	} else if (fn == F(fopen)
		|| fn == F(strcat)
		) {
		char *s1 = va_arg(ap, char *);
		char *s2 = va_arg(ap, char *);
		ret = fn(s1, s2);
	} else if (fn == F(freopen)) {
		char *name = va_arg(ap, char *);
		char *mode = va_arg(ap, char *);
		FILE *f = va_arg(ap, FILE *);
		ret = fn(name, mode, f);
	} else if (fn == F(tmpnam)
		/* || fn == F(gets) */
		) {
		char *s = va_arg(ap, char *);
		ret = fn(s);
	} else if (fn == F(memchr)
		|| fn == F(memset)
		) {
		void *p = va_arg(ap, void *);
		int c = va_arg(ap, int);
		size_t n = va_arg(ap, size_t);
		ret = fn(p, c, n);
	} else if (fn == F(memcpy)
		|| fn == F(memmove)
		) {
		void *p1 = va_arg(ap, void *);
		void *p2 = va_arg(ap, void *);
		size_t n = va_arg(ap, size_t);
		ret = fn(p1, p2, n);
	} else if (fn == F(strchr)
		|| fn == F(strrchr)
		) {
		char *s = va_arg(ap, char *);
		int c = va_arg(ap, int);
		ret = fn(s, c);
	} else if (fn == F(strerror)) {
		int n = va_arg(ap, int);
		ret = fn(n);
	} else if (fn == F(strncat)
		|| fn == F(strncpy)
		|| fn == F(strstr)
		|| fn == F(strtok)
		) {
		char *s1 = va_arg(ap, char *);
		char *s2 = va_arg(ap, char *);
		size_t n = va_arg(ap, size_t);
		ret = fn(s1, s2, n);
	} else if (fn == F(strcpy)
		|| fn == F(strpbrk)
		) {
		char *s1 = va_arg(ap, char *);
		char *s2 = va_arg(ap, char *);
		ret = fn(s1, s2);
	} else {
		(fprintf)(stderr, "Unwrapped function %s\n", func);
		(abort());
	}

	va_end(ap);
	__checked_call.func = NULL;
	__checked_call.file = NULL;
	__checked_call.line = 0;

	return ret;
}

#undef F
#define F(fn) (void(*)())(fn)
void __checked(const char *file, const char *func, unsigned long long line, void(*fn)(), ...)
{
	va_list ap;

	__checked_call.func = (char*)func;
	__checked_call.file = (char*)file;
	__checked_call.line = line;

	va_start(ap, fn);

	if (fn == F(clearerr)
		|| fn == F(rewind)
		) {
		FILE *f = va_arg(ap, FILE *);
		fn(f);
	} else if (fn == F(perror)) {
		const char *s = va_arg(ap, const char *);
		fn(s);
	} else if (fn == F(setbuf)) {
		FILE *f = va_arg(ap, FILE *);
		char *b = va_arg(ap, char *);
		fn(f, b);
	} else if (fn == F(abort)) {
		fn();
	} else {
		(fprintf)(stderr, "Unwrapped function %s\n", func);
		(abort());
	}

	va_end(ap);
	__checked_call.func = NULL;
	__checked_call.file = NULL;
	__checked_call.line = 0;
}

#undef F
#define F(fn) (size_t(*)())(fn)
size_t __checked_s(const char *file, const char *func, unsigned long long line, size_t (*fn)(), ...)
{
	va_list ap;
	size_t ret = 0;

	__checked_call.func = (char*)func;
	__checked_call.file = (char*)file;
	__checked_call.line = line;

	va_start(ap, fn);

	if (fn == F(fread)
		|| fn == F(fwrite)
		) {
		void *p = va_arg(ap, void *);
		size_t s = va_arg(ap, size_t);
		size_t n = va_arg(ap, size_t);
		FILE *f = va_arg(ap, FILE *);
		ret = fn(p, s, n, f);
	} else if (fn == F(strlen)) {
		char *s = va_arg(ap, char *);
		ret = fn(s);
	} else if (fn == F(strspn)) {
		const char *s1 = va_arg(ap, const char *);
		const char *s2 = va_arg(ap, const char *);
		ret = fn(s1, s2);
	} else if (fn == F(strxfrm)) {
		const char *s1 = va_arg(ap, const char *);
		const char *s2 = va_arg(ap, const char *);
		size_t n = va_arg(ap, size_t);
		ret = fn(s1, s2, n);
	} else {
		(fprintf)(stderr, "Unwrapped function %s\n", func);
		(abort());
	}

	va_end(ap);
	__checked_call.func = NULL;
	__checked_call.file = NULL;
	__checked_call.line = 0;

	return ret;
}

#undef F
#define F(fn) (long(*)())(fn)
long __checked_l(const char *file, const char *func, unsigned long long line, long (*fn)(), ...)
{
	va_list ap;
	long ret = 0;

	__checked_call.func = (char*)func;
	__checked_call.file = (char*)file;
	__checked_call.line = line;

	va_start(ap, fn);

	if (fn == F(ftell)) {
		FILE *f = va_arg(ap, FILE *);
		ret = fn(f);
	} else {
		(fprintf)(stderr, "Unwrapped function %s\n", func);
		(abort());
	}

	va_end(ap);
	__checked_call.func = NULL;
	__checked_call.file = NULL;
	__checked_call.line = 0;

	return ret;
}
