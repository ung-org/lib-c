.POSIX:

include config.mk

default: headers

assert_h_SOURCES =  \
	std/9899-1990/assert/assert.c

$(INCDIR)/assert.h: $(assert_h_SOURCES)
	sh mkh.sh $@ $(assert_h_SOURCES)

ctype_h_SOURCES =  \
	std/9899-1990/ctype/isalnum.c \
	std/9899-1990/ctype/isalpha.c \
	std/9899-1990/ctype/iscntrl.c \
	std/9899-1990/ctype/isdigit.c \
	std/9899-1990/ctype/isgraph.c \
	std/9899-1990/ctype/islower.c \
	std/9899-1990/ctype/isprint.c \
	std/9899-1990/ctype/ispunct.c \
	std/9899-1990/ctype/isspace.c \
	std/9899-1990/ctype/isupper.c \
	std/9899-1990/ctype/isxdigit.c \
	std/9899-1990/ctype/tolower.c \
	std/9899-1990/ctype/toupper.c

$(INCDIR)/ctype.h: $(ctype_h_SOURCES)
	sh mkh.sh $@ $(ctype_h_SOURCES)

errno_h_SOURCES =  \
	std/9899-1990/errno/EDOM.c \
	std/9899-1990/errno/ERANGE.c \
	std/9899-1990/errno/errno.c

$(INCDIR)/errno.h: $(errno_h_SOURCES)
	sh mkh.sh $@ $(errno_h_SOURCES)

float_h_SOURCES =  \
	std/9899-1990/float/DBL_DIG.c \
	std/9899-1990/float/DBL_EPSILON.c \
	std/9899-1990/float/DBL_MANT_DIG.c \
	std/9899-1990/float/DBL_MAX.c \
	std/9899-1990/float/DBL_MAX_10_EXP.c \
	std/9899-1990/float/DBL_MAX_EXP.c \
	std/9899-1990/float/DBL_MIN.c \
	std/9899-1990/float/DBL_MIN_10_EXP.c \
	std/9899-1990/float/DBL_MIN_EXP.c \
	std/9899-1990/float/FLT_DIG.c \
	std/9899-1990/float/FLT_EPSILON.c \
	std/9899-1990/float/FLT_MANT_DIG.c \
	std/9899-1990/float/FLT_MAX.c \
	std/9899-1990/float/FLT_MAX_10_EXP.c \
	std/9899-1990/float/FLT_MAX_EXP.c \
	std/9899-1990/float/FLT_MIN.c \
	std/9899-1990/float/FLT_MIN_10_EXP.c \
	std/9899-1990/float/FLT_MIN_EXP.c \
	std/9899-1990/float/FLT_RADIX.c \
	std/9899-1990/float/FLT_ROUNDS.c \
	std/9899-1990/float/LDBL_DIG.c \
	std/9899-1990/float/LDBL_EPSILON.c \
	std/9899-1990/float/LDBL_MANT_DIG.c \
	std/9899-1990/float/LDBL_MAX.c \
	std/9899-1990/float/LDBL_MAX_10_EXP.c \
	std/9899-1990/float/LDBL_MAX_EXP.c \
	std/9899-1990/float/LDBL_MIN.c \
	std/9899-1990/float/LDBL_MIN_10_EXP.c \
	std/9899-1990/float/LDBL_MIN_EXP.c

$(INCDIR)/float.h: $(float_h_SOURCES)
	sh mkh.sh $@ $(float_h_SOURCES)

limits_h_SOURCES =  \
	std/9899-1990/limits/CHAR_BIT.c \
	std/9899-1990/limits/CHAR_MAX.c \
	std/9899-1990/limits/CHAR_MIN.c \
	std/9899-1990/limits/INT_MAX.c \
	std/9899-1990/limits/INT_MIN.c \
	std/9899-1990/limits/LONG_MAX.c \
	std/9899-1990/limits/LONG_MIN.c \
	std/9899-1990/limits/MB_LEN_MAX.c \
	std/9899-1990/limits/SCHAR_MAX.c \
	std/9899-1990/limits/SCHAR_MIN.c \
	std/9899-1990/limits/SHRT_MAX.c \
	std/9899-1990/limits/SHRT_MIN.c \
	std/9899-1990/limits/UCHAR_MAX.c \
	std/9899-1990/limits/UINT_MAX.c \
	std/9899-1990/limits/ULONG_MAX.c \
	std/9899-1990/limits/USHRT_MAX.c

$(INCDIR)/limits.h: $(limits_h_SOURCES)
	sh mkh.sh $@ $(limits_h_SOURCES)

locale_h_SOURCES =  \
	std/9899-1990/locale/LC_ALL.c \
	std/9899-1990/locale/LC_COLLATE.c \
	std/9899-1990/locale/LC_CTYPE.c \
	std/9899-1990/locale/LC_MONETARY.c \
	std/9899-1990/locale/LC_NUMERIC.c \
	std/9899-1990/locale/LC_TIME.c \
	std/9899-1990/locale/localeconv.c \
	std/9899-1990/locale/setlocale.c \
	std/9899-1990/locale/struct_lconv.c \
	std/9899-1990/locale/NULL.ref \
	std/9899-1990/stddef/NULL.c

$(INCDIR)/locale.h: $(locale_h_SOURCES)
	sh mkh.sh $@ $(locale_h_SOURCES)

math_h_SOURCES =  \
	std/9899-1990/math/HUGE_VAL.c \
	std/9899-1990/math/acos.c \
	std/9899-1990/math/asin.c \
	std/9899-1990/math/atan.c \
	std/9899-1990/math/atan2.c \
	std/9899-1990/math/ceil.c \
	std/9899-1990/math/cos.c \
	std/9899-1990/math/cosh.c \
	std/9899-1990/math/exp.c \
	std/9899-1990/math/fabs.c \
	std/9899-1990/math/floor.c \
	std/9899-1990/math/fmod.c \
	std/9899-1990/math/frexp.c \
	std/9899-1990/math/ldexp.c \
	std/9899-1990/math/log.c \
	std/9899-1990/math/log10.c \
	std/9899-1990/math/modf.c \
	std/9899-1990/math/pow.c \
	std/9899-1990/math/sin.c \
	std/9899-1990/math/sinh.c \
	std/9899-1990/math/sqrt.c \
	std/9899-1990/math/tan.c \
	std/9899-1990/math/tanh.c

$(INCDIR)/math.h: $(math_h_SOURCES)
	sh mkh.sh $@ $(math_h_SOURCES)

setjmp_h_SOURCES =  \
	std/9899-1990/setjmp/jmp_buf.c \
	std/9899-1990/setjmp/longjmp.c \
	std/9899-1990/setjmp/setjmp.c

$(INCDIR)/setjmp.h: $(setjmp_h_SOURCES)
	sh mkh.sh $@ $(setjmp_h_SOURCES)

signal_h_SOURCES =  \
	std/9899-1990/signal/SIGABRT.c \
	std/9899-1990/signal/SIGFPE.c \
	std/9899-1990/signal/SIGILL.c \
	std/9899-1990/signal/SIGINT.c \
	std/9899-1990/signal/SIGSEGV.c \
	std/9899-1990/signal/SIGTERM.c \
	std/9899-1990/signal/SIG_DFL.c \
	std/9899-1990/signal/SIG_ERR.c \
	std/9899-1990/signal/SIG_IGN.c \
	std/9899-1990/signal/raise.c \
	std/9899-1990/signal/sig_atomic_t.c \
	std/9899-1990/signal/signal.c

$(INCDIR)/signal.h: $(signal_h_SOURCES)
	sh mkh.sh $@ $(signal_h_SOURCES)

stdarg_h_SOURCES =  \
	std/9899-1990/stdarg/va_arg.c \
	std/9899-1990/stdarg/va_end.c \
	std/9899-1990/stdarg/va_list.c \
	std/9899-1990/stdarg/va_start.c

$(INCDIR)/stdarg.h: $(stdarg_h_SOURCES)
	sh mkh.sh $@ $(stdarg_h_SOURCES)

stddef_h_SOURCES =  \
	std/9899-1990/stddef/NULL.c \
	std/9899-1990/stddef/offsetof.c \
	std/9899-1990/stddef/ptrdiff_t.c \
	std/9899-1990/stddef/size_t.c \
	std/9899-1990/stddef/wchar_t.c

$(INCDIR)/stddef.h: $(stddef_h_SOURCES)
	sh mkh.sh $@ $(stddef_h_SOURCES)

stdio_h_SOURCES =  \
	std/9899-1990/stdio/BUFSIZ.c \
	std/9899-1990/stdio/EOF.c \
	std/9899-1990/stdio/FILE.c \
	std/9899-1990/stdio/FILENAME_MAX.c \
	std/9899-1990/stdio/FOPEN_MAX.c \
	std/9899-1990/stdio/L_tmpnam.c \
	std/9899-1990/stdio/SEEK_CUR.c \
	std/9899-1990/stdio/SEEK_END.c \
	std/9899-1990/stdio/SEEK_SET.c \
	std/9899-1990/stdio/TMP_MAX.c \
	std/9899-1990/stdio/_IOFBF.c \
	std/9899-1990/stdio/_IOLBF.c \
	std/9899-1990/stdio/_IONBF.c \
	std/9899-1990/stdio/clearerr.c \
	std/9899-1990/stdio/fclose.c \
	std/9899-1990/stdio/feof.c \
	std/9899-1990/stdio/ferror.c \
	std/9899-1990/stdio/fflush.c \
	std/9899-1990/stdio/fgetc.c \
	std/9899-1990/stdio/fgetpos.c \
	std/9899-1990/stdio/fgets.c \
	std/9899-1990/stdio/fopen.c \
	std/9899-1990/stdio/fpos_t.c \
	std/9899-1990/stdio/fprintf.c \
	std/9899-1990/stdio/fputc.c \
	std/9899-1990/stdio/fputs.c \
	std/9899-1990/stdio/fread.c \
	std/9899-1990/stdio/freopen.c \
	std/9899-1990/stdio/fscanf.c \
	std/9899-1990/stdio/fseek.c \
	std/9899-1990/stdio/fsetpos.c \
	std/9899-1990/stdio/ftell.c \
	std/9899-1990/stdio/fwrite.c \
	std/9899-1990/stdio/getc.c \
	std/9899-1990/stdio/getchar.c \
	std/9899-1990/stdio/gets.c \
	std/9899-1990/stdio/perror.c \
	std/9899-1990/stdio/printf.c \
	std/9899-1990/stdio/putc.c \
	std/9899-1990/stdio/putchar.c \
	std/9899-1990/stdio/puts.c \
	std/9899-1990/stdio/remove.c \
	std/9899-1990/stdio/rename.c \
	std/9899-1990/stdio/rewind.c \
	std/9899-1990/stdio/scanf.c \
	std/9899-1990/stdio/setbuf.c \
	std/9899-1990/stdio/setvbuf.c \
	std/9899-1990/stdio/sprintf.c \
	std/9899-1990/stdio/sscanf.c \
	std/9899-1990/stdio/stderr.c \
	std/9899-1990/stdio/stdin.c \
	std/9899-1990/stdio/stdout.c \
	std/9899-1990/stdio/tmpfile.c \
	std/9899-1990/stdio/tmpnam.c \
	std/9899-1990/stdio/ungetc.c \
	std/9899-1990/stdio/vfprintf.c \
	std/9899-1990/stdio/vprintf.c \
	std/9899-1990/stdio/vsprintf.c \
	std/9899-1990/stdio/NULL.ref \
	std/9899-1990/stddef/NULL.c \
	std/9899-1990/stdio/size_t.ref \
	std/9899-1990/stddef/size_t.c \
	std/9899-1990/stdio/va_list.ref \
	std/9899-1990/stdarg/va_list.c

$(INCDIR)/stdio.h: $(stdio_h_SOURCES)
	sh mkh.sh $@ $(stdio_h_SOURCES)

stdlib_h_SOURCES =  \
	std/9899-1990/stdlib/EXIT_FAILURE.c \
	std/9899-1990/stdlib/EXIT_SUCCESS.c \
	std/9899-1990/stdlib/MB_CUR_MAX.c \
	std/9899-1990/stdlib/RAND_MAX.c \
	std/9899-1990/stdlib/abort.c \
	std/9899-1990/stdlib/abs.c \
	std/9899-1990/stdlib/atexit.c \
	std/9899-1990/stdlib/atof.c \
	std/9899-1990/stdlib/atoi.c \
	std/9899-1990/stdlib/atol.c \
	std/9899-1990/stdlib/bsearch.c \
	std/9899-1990/stdlib/calloc.c \
	std/9899-1990/stdlib/div.c \
	std/9899-1990/stdlib/div_t.c \
	std/9899-1990/stdlib/exit.c \
	std/9899-1990/stdlib/free.c \
	std/9899-1990/stdlib/getenv.c \
	std/9899-1990/stdlib/labs.c \
	std/9899-1990/stdlib/ldiv.c \
	std/9899-1990/stdlib/ldiv_t.c \
	std/9899-1990/stdlib/malloc.c \
	std/9899-1990/stdlib/mblen.c \
	std/9899-1990/stdlib/mbstowcs.c \
	std/9899-1990/stdlib/mbtowc.c \
	std/9899-1990/stdlib/qsort.c \
	std/9899-1990/stdlib/rand.c \
	std/9899-1990/stdlib/realloc.c \
	std/9899-1990/stdlib/srand.c \
	std/9899-1990/stdlib/strtod.c \
	std/9899-1990/stdlib/strtol.c \
	std/9899-1990/stdlib/strtoul.c \
	std/9899-1990/stdlib/system.c \
	std/9899-1990/stdlib/wcstombs.c \
	std/9899-1990/stdlib/wctomb.c \
	std/9899-1990/stdlib/NULL.ref \
	std/9899-1990/stddef/NULL.c \
	std/9899-1990/stdlib/size_t.ref \
	std/9899-1990/stddef/size_t.c \
	std/9899-1990/stdlib/wchar_t.ref \
	std/9899-1990/stddef/wchar_t.c

$(INCDIR)/stdlib.h: $(stdlib_h_SOURCES)
	sh mkh.sh $@ $(stdlib_h_SOURCES)

string_h_SOURCES =  \
	std/9899-1990/string/memchr.c \
	std/9899-1990/string/memcmp.c \
	std/9899-1990/string/memcpy.c \
	std/9899-1990/string/memmove.c \
	std/9899-1990/string/memset.c \
	std/9899-1990/string/strcat.c \
	std/9899-1990/string/strchr.c \
	std/9899-1990/string/strcmp.c \
	std/9899-1990/string/strcoll.c \
	std/9899-1990/string/strcpy.c \
	std/9899-1990/string/strcspn.c \
	std/9899-1990/string/strerror.c \
	std/9899-1990/string/strlen.c \
	std/9899-1990/string/strncat.c \
	std/9899-1990/string/strncmp.c \
	std/9899-1990/string/strncpy.c \
	std/9899-1990/string/strpbrk.c \
	std/9899-1990/string/strrchr.c \
	std/9899-1990/string/strspn.c \
	std/9899-1990/string/strstr.c \
	std/9899-1990/string/strtok.c \
	std/9899-1990/string/strxfrm.c \
	std/9899-1990/string/NULL.ref \
	std/9899-1990/stddef/NULL.c \
	std/9899-1990/string/size_t.ref \
	std/9899-1990/stddef/size_t.c

$(INCDIR)/string.h: $(string_h_SOURCES)
	sh mkh.sh $@ $(string_h_SOURCES)

time_h_SOURCES =  \
	std/9899-1990/time/CLOCKS_PER_SEC.c \
	std/9899-1990/time/asctime.c \
	std/9899-1990/time/clock.c \
	std/9899-1990/time/clock_t.c \
	std/9899-1990/time/ctime.c \
	std/9899-1990/time/difftime.c \
	std/9899-1990/time/gmtime.c \
	std/9899-1990/time/localtime.c \
	std/9899-1990/time/mktime.c \
	std/9899-1990/time/strftime.c \
	std/9899-1990/time/struct_tm.c \
	std/9899-1990/time/time.c \
	std/9899-1990/time/time_t.c \
	std/9899-1990/time/NULL.ref \
	std/9899-1990/stddef/NULL.c \
	std/9899-1990/time/size_t.ref \
	std/9899-1990/stddef/size_t.c

$(INCDIR)/time.h: $(time_h_SOURCES)
	sh mkh.sh $@ $(time_h_SOURCES)

headers: $(INCDIR)/assert.h $(INCDIR)/ctype.h $(INCDIR)/errno.h $(INCDIR)/float.h $(INCDIR)/limits.h $(INCDIR)/locale.h $(INCDIR)/math.h $(INCDIR)/setjmp.h $(INCDIR)/signal.h $(INCDIR)/stdarg.h $(INCDIR)/stddef.h $(INCDIR)/stdio.h $(INCDIR)/stdlib.h $(INCDIR)/string.h $(INCDIR)/time.h