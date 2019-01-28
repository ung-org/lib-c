.POSIX:

default: all

include config.mk

INCLUDES=-I$(INCDIR) -I. -Inonstd/stubs
CFLAGS=$(INCLUDES) -g -fno-builtin -nostdinc -nostdlib -nodefaultlibs -Werror -Wall -Wextra -fPIC

libc_OBJS = $(OBJDIR)/libc.o $(OBJDIR)/x86-64.o \
	$(OBJDIR)/isalnum.o \
	$(OBJDIR)/isalpha.o \
	$(OBJDIR)/iscntrl.o \
	$(OBJDIR)/isdigit.o \
	$(OBJDIR)/isgraph.o \
	$(OBJDIR)/islower.o \
	$(OBJDIR)/isprint.o \
	$(OBJDIR)/ispunct.o \
	$(OBJDIR)/isspace.o \
	$(OBJDIR)/isupper.o \
	$(OBJDIR)/isxdigit.o \
	$(OBJDIR)/tolower.o \
	$(OBJDIR)/toupper.o \
	$(OBJDIR)/localeconv.o \
	$(OBJDIR)/setlocale.o \
	$(OBJDIR)/jmp_buf.o \
	$(OBJDIR)/longjmp.o \
	$(OBJDIR)/setjmp.o \
	$(OBJDIR)/raise.o \
	$(OBJDIR)/signal.o \
	$(OBJDIR)/clearerr.o \
	$(OBJDIR)/fclose.o \
	$(OBJDIR)/feof.o \
	$(OBJDIR)/ferror.o \
	$(OBJDIR)/fflush.o \
	$(OBJDIR)/fgetc.o \
	$(OBJDIR)/fgetpos.o \
	$(OBJDIR)/fgets.o \
	$(OBJDIR)/fopen.o \
	$(OBJDIR)/fprintf.o \
	$(OBJDIR)/fputc.o \
	$(OBJDIR)/fputs.o \
	$(OBJDIR)/fread.o \
	$(OBJDIR)/freopen.o \
	$(OBJDIR)/fscanf.o \
	$(OBJDIR)/fseek.o \
	$(OBJDIR)/fsetpos.o \
	$(OBJDIR)/ftell.o \
	$(OBJDIR)/fwrite.o \
	$(OBJDIR)/getc.o \
	$(OBJDIR)/getchar.o \
	$(OBJDIR)/gets.o \
	$(OBJDIR)/perror.o \
	$(OBJDIR)/printf.o \
	$(OBJDIR)/putc.o \
	$(OBJDIR)/putchar.o \
	$(OBJDIR)/puts.o \
	$(OBJDIR)/remove.o \
	$(OBJDIR)/rename.o \
	$(OBJDIR)/rewind.o \
	$(OBJDIR)/scanf.o \
	$(OBJDIR)/setbuf.o \
	$(OBJDIR)/setvbuf.o \
	$(OBJDIR)/sprintf.o \
	$(OBJDIR)/sscanf.o \
	$(OBJDIR)/tmpfile.o \
	$(OBJDIR)/tmpnam.o \
	$(OBJDIR)/ungetc.o \
	$(OBJDIR)/vfprintf.o \
	$(OBJDIR)/vprintf.o \
	$(OBJDIR)/vsprintf.o \
	$(OBJDIR)/abort.o \
	$(OBJDIR)/abs.o \
	$(OBJDIR)/atexit.o \
	$(OBJDIR)/atof.o \
	$(OBJDIR)/atoi.o \
	$(OBJDIR)/atol.o \
	$(OBJDIR)/bsearch.o \
	$(OBJDIR)/calloc.o \
	$(OBJDIR)/div.o \
	$(OBJDIR)/exit.o \
	$(OBJDIR)/free.o \
	$(OBJDIR)/getenv.o \
	$(OBJDIR)/labs.o \
	$(OBJDIR)/ldiv.o \
	$(OBJDIR)/malloc.o \
	$(OBJDIR)/mblen.o \
	$(OBJDIR)/mbstowcs.o \
	$(OBJDIR)/mbtowc.o \
	$(OBJDIR)/qsort.o \
	$(OBJDIR)/rand.o \
	$(OBJDIR)/realloc.o \
	$(OBJDIR)/srand.o \
	$(OBJDIR)/strtod.o \
	$(OBJDIR)/strtol.o \
	$(OBJDIR)/strtoul.o \
	$(OBJDIR)/system.o \
	$(OBJDIR)/wcstombs.o \
	$(OBJDIR)/wctomb.o \
	$(OBJDIR)/memchr.o \
	$(OBJDIR)/memcmp.o \
	$(OBJDIR)/memcpy.o \
	$(OBJDIR)/memmove.o \
	$(OBJDIR)/memset.o \
	$(OBJDIR)/strcat.o \
	$(OBJDIR)/strchr.o \
	$(OBJDIR)/strcmp.o \
	$(OBJDIR)/strcoll.o \
	$(OBJDIR)/strcpy.o \
	$(OBJDIR)/strcspn.o \
	$(OBJDIR)/strerror.o \
	$(OBJDIR)/strlen.o \
	$(OBJDIR)/strncat.o \
	$(OBJDIR)/strncmp.o \
	$(OBJDIR)/strncpy.o \
	$(OBJDIR)/strpbrk.o \
	$(OBJDIR)/strrchr.o \
	$(OBJDIR)/strspn.o \
	$(OBJDIR)/strstr.o \
	$(OBJDIR)/strtok.o \
	$(OBJDIR)/strxfrm.o \
	$(OBJDIR)/asctime.o \
	$(OBJDIR)/clock.o \
	$(OBJDIR)/ctime.o \
	$(OBJDIR)/difftime.o \
	$(OBJDIR)/gmtime.o \
	$(OBJDIR)/localtime.o \
	$(OBJDIR)/mktime.o \
	$(OBJDIR)/strftime.o \
	$(OBJDIR)/time.o

libc.a: $(libc_OBJS)
	$(AR) r $@ $?

libm_OBJS = \
	$(OBJDIR)/acos.o \
	$(OBJDIR)/asin.o \
	$(OBJDIR)/atan.o \
	$(OBJDIR)/atan2.o \
	$(OBJDIR)/ceil.o \
	$(OBJDIR)/cos.o \
	$(OBJDIR)/cosh.o \
	$(OBJDIR)/exp.o \
	$(OBJDIR)/fabs.o \
	$(OBJDIR)/floor.o \
	$(OBJDIR)/fmod.o \
	$(OBJDIR)/frexp.o \
	$(OBJDIR)/ldexp.o \
	$(OBJDIR)/log.o \
	$(OBJDIR)/log10.o \
	$(OBJDIR)/modf.o \
	$(OBJDIR)/pow.o \
	$(OBJDIR)/sin.o \
	$(OBJDIR)/sinh.o \
	$(OBJDIR)/sqrt.o \
	$(OBJDIR)/tan.o \
	$(OBJDIR)/tanh.o

libm.a: $(libm_OBJS)
	$(AR) r $@ $?

$(OBJDIR)/abort.o: std/9899-1990/stdlib/abort.c $(INCDIR)/stdlib.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/stdlib/abort.c -o $@

$(OBJDIR)/abs.o: std/9899-1990/stdlib/abs.c $(INCDIR)/stdlib.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/stdlib/abs.c -o $@

$(OBJDIR)/acos.o: std/9899-1990/math/acos.c $(INCDIR)/math.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/math/acos.c -o $@

$(OBJDIR)/asctime.o: std/9899-1990/time/asctime.c $(INCDIR)/time.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/time/asctime.c -o $@

$(OBJDIR)/asin.o: std/9899-1990/math/asin.c $(INCDIR)/math.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/math/asin.c -o $@

$(OBJDIR)/atan.o: std/9899-1990/math/atan.c $(INCDIR)/math.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/math/atan.c -o $@

$(OBJDIR)/atan2.o: std/9899-1990/math/atan2.c $(INCDIR)/math.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/math/atan2.c -o $@

$(OBJDIR)/atexit.o: std/9899-1990/stdlib/atexit.c $(INCDIR)/stdlib.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/stdlib/atexit.c -o $@

$(OBJDIR)/atof.o: std/9899-1990/stdlib/atof.c $(INCDIR)/stdlib.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/stdlib/atof.c -o $@

$(OBJDIR)/atoi.o: std/9899-1990/stdlib/atoi.c $(INCDIR)/stdlib.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/stdlib/atoi.c -o $@

$(OBJDIR)/atol.o: std/9899-1990/stdlib/atol.c $(INCDIR)/stdlib.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/stdlib/atol.c -o $@

$(OBJDIR)/bsearch.o: std/9899-1990/stdlib/bsearch.c $(INCDIR)/stdlib.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/stdlib/bsearch.c -o $@

$(OBJDIR)/calloc.o: std/9899-1990/stdlib/calloc.c $(INCDIR)/stdlib.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/stdlib/calloc.c -o $@

$(OBJDIR)/ceil.o: std/9899-1990/math/ceil.c $(INCDIR)/math.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/math/ceil.c -o $@

$(OBJDIR)/clearerr.o: std/9899-1990/stdio/clearerr.c $(INCDIR)/stdio.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/stdio/clearerr.c -o $@

$(OBJDIR)/clock.o: std/9899-1990/time/clock.c $(INCDIR)/time.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/time/clock.c -o $@

$(OBJDIR)/cos.o: std/9899-1990/math/cos.c $(INCDIR)/math.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/math/cos.c -o $@

$(OBJDIR)/cosh.o: std/9899-1990/math/cosh.c $(INCDIR)/math.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/math/cosh.c -o $@

$(OBJDIR)/ctime.o: std/9899-1990/time/ctime.c $(INCDIR)/time.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/time/ctime.c -o $@

$(OBJDIR)/difftime.o: std/9899-1990/time/difftime.c $(INCDIR)/time.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/time/difftime.c -o $@

$(OBJDIR)/div.o: std/9899-1990/stdlib/div.c $(INCDIR)/stdlib.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/stdlib/div.c -o $@

$(OBJDIR)/exit.o: std/9899-1990/stdlib/exit.c $(INCDIR)/stdlib.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/stdlib/exit.c -o $@

$(OBJDIR)/exp.o: std/9899-1990/math/exp.c $(INCDIR)/math.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/math/exp.c -o $@

$(OBJDIR)/fabs.o: std/9899-1990/math/fabs.c $(INCDIR)/math.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/math/fabs.c -o $@

$(OBJDIR)/fclose.o: std/9899-1990/stdio/fclose.c $(INCDIR)/stdio.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/stdio/fclose.c -o $@

$(OBJDIR)/feof.o: std/9899-1990/stdio/feof.c $(INCDIR)/stdio.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/stdio/feof.c -o $@

$(OBJDIR)/ferror.o: std/9899-1990/stdio/ferror.c $(INCDIR)/stdio.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/stdio/ferror.c -o $@

$(OBJDIR)/fflush.o: std/9899-1990/stdio/fflush.c $(INCDIR)/stdio.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/stdio/fflush.c -o $@

$(OBJDIR)/fgetc.o: std/9899-1990/stdio/fgetc.c $(INCDIR)/stdio.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/stdio/fgetc.c -o $@

$(OBJDIR)/fgetpos.o: std/9899-1990/stdio/fgetpos.c $(INCDIR)/stdio.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/stdio/fgetpos.c -o $@

$(OBJDIR)/fgets.o: std/9899-1990/stdio/fgets.c $(INCDIR)/stdio.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/stdio/fgets.c -o $@

$(OBJDIR)/floor.o: std/9899-1990/math/floor.c $(INCDIR)/math.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/math/floor.c -o $@

$(OBJDIR)/fmod.o: std/9899-1990/math/fmod.c $(INCDIR)/math.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/math/fmod.c -o $@

$(OBJDIR)/fopen.o: std/9899-1990/stdio/fopen.c $(INCDIR)/stdio.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/stdio/fopen.c -o $@

$(OBJDIR)/fprintf.o: std/9899-1990/stdio/fprintf.c $(INCDIR)/stdio.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/stdio/fprintf.c -o $@

$(OBJDIR)/fputc.o: std/9899-1990/stdio/fputc.c $(INCDIR)/stdio.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/stdio/fputc.c -o $@

$(OBJDIR)/fputs.o: std/9899-1990/stdio/fputs.c $(INCDIR)/stdio.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/stdio/fputs.c -o $@

$(OBJDIR)/fread.o: std/9899-1990/stdio/fread.c $(INCDIR)/stdio.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/stdio/fread.c -o $@

$(OBJDIR)/free.o: std/9899-1990/stdlib/free.c $(INCDIR)/stdlib.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/stdlib/free.c -o $@

$(OBJDIR)/freopen.o: std/9899-1990/stdio/freopen.c $(INCDIR)/stdio.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/stdio/freopen.c -o $@

$(OBJDIR)/frexp.o: std/9899-1990/math/frexp.c $(INCDIR)/math.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/math/frexp.c -o $@

$(OBJDIR)/fscanf.o: std/9899-1990/stdio/fscanf.c $(INCDIR)/stdio.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/stdio/fscanf.c -o $@

$(OBJDIR)/fseek.o: std/9899-1990/stdio/fseek.c $(INCDIR)/stdio.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/stdio/fseek.c -o $@

$(OBJDIR)/fsetpos.o: std/9899-1990/stdio/fsetpos.c $(INCDIR)/stdio.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/stdio/fsetpos.c -o $@

$(OBJDIR)/ftell.o: std/9899-1990/stdio/ftell.c $(INCDIR)/stdio.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/stdio/ftell.c -o $@

$(OBJDIR)/fwrite.o: std/9899-1990/stdio/fwrite.c $(INCDIR)/stdio.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/stdio/fwrite.c -o $@

$(OBJDIR)/getc.o: std/9899-1990/stdio/getc.c $(INCDIR)/stdio.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/stdio/getc.c -o $@

$(OBJDIR)/getchar.o: std/9899-1990/stdio/getchar.c $(INCDIR)/stdio.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/stdio/getchar.c -o $@

$(OBJDIR)/getenv.o: std/9899-1990/stdlib/getenv.c $(INCDIR)/stdlib.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/stdlib/getenv.c -o $@

$(OBJDIR)/gets.o: std/9899-1990/stdio/gets.c $(INCDIR)/stdio.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/stdio/gets.c -o $@

$(OBJDIR)/gmtime.o: std/9899-1990/time/gmtime.c $(INCDIR)/time.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/time/gmtime.c -o $@

$(OBJDIR)/isalnum.o: std/9899-1990/ctype/isalnum.c $(INCDIR)/ctype.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/ctype/isalnum.c -o $@

$(OBJDIR)/isalpha.o: std/9899-1990/ctype/isalpha.c $(INCDIR)/ctype.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/ctype/isalpha.c -o $@

$(OBJDIR)/iscntrl.o: std/9899-1990/ctype/iscntrl.c $(INCDIR)/ctype.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/ctype/iscntrl.c -o $@

$(OBJDIR)/isdigit.o: std/9899-1990/ctype/isdigit.c $(INCDIR)/ctype.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/ctype/isdigit.c -o $@

$(OBJDIR)/isgraph.o: std/9899-1990/ctype/isgraph.c $(INCDIR)/ctype.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/ctype/isgraph.c -o $@

$(OBJDIR)/islower.o: std/9899-1990/ctype/islower.c $(INCDIR)/ctype.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/ctype/islower.c -o $@

$(OBJDIR)/isprint.o: std/9899-1990/ctype/isprint.c $(INCDIR)/ctype.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/ctype/isprint.c -o $@

$(OBJDIR)/ispunct.o: std/9899-1990/ctype/ispunct.c $(INCDIR)/ctype.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/ctype/ispunct.c -o $@

$(OBJDIR)/isspace.o: std/9899-1990/ctype/isspace.c $(INCDIR)/ctype.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/ctype/isspace.c -o $@

$(OBJDIR)/isupper.o: std/9899-1990/ctype/isupper.c $(INCDIR)/ctype.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/ctype/isupper.c -o $@

$(OBJDIR)/isxdigit.o: std/9899-1990/ctype/isxdigit.c $(INCDIR)/ctype.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/ctype/isxdigit.c -o $@

$(OBJDIR)/jmp_buf.o: std/9899-1990/setjmp/jmp_buf.c $(INCDIR)/setjmp.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/setjmp/jmp_buf.c -o $@

$(OBJDIR)/labs.o: std/9899-1990/stdlib/labs.c $(INCDIR)/stdlib.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/stdlib/labs.c -o $@

$(OBJDIR)/ldexp.o: std/9899-1990/math/ldexp.c $(INCDIR)/math.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/math/ldexp.c -o $@

$(OBJDIR)/ldiv.o: std/9899-1990/stdlib/ldiv.c $(INCDIR)/stdlib.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/stdlib/ldiv.c -o $@

$(OBJDIR)/localeconv.o: std/9899-1990/locale/localeconv.c $(INCDIR)/locale.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/locale/localeconv.c -o $@

$(OBJDIR)/localtime.o: std/9899-1990/time/localtime.c $(INCDIR)/time.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/time/localtime.c -o $@

$(OBJDIR)/log.o: std/9899-1990/math/log.c $(INCDIR)/math.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/math/log.c -o $@

$(OBJDIR)/log10.o: std/9899-1990/math/log10.c $(INCDIR)/math.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/math/log10.c -o $@

$(OBJDIR)/longjmp.o: std/9899-1990/setjmp/longjmp.c $(INCDIR)/setjmp.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/setjmp/longjmp.c -o $@

$(OBJDIR)/malloc.o: std/9899-1990/stdlib/malloc.c $(INCDIR)/stdlib.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/stdlib/malloc.c -o $@

$(OBJDIR)/mblen.o: std/9899-1990/stdlib/mblen.c $(INCDIR)/stdlib.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/stdlib/mblen.c -o $@

$(OBJDIR)/mbstowcs.o: std/9899-1990/stdlib/mbstowcs.c $(INCDIR)/stdlib.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/stdlib/mbstowcs.c -o $@

$(OBJDIR)/mbtowc.o: std/9899-1990/stdlib/mbtowc.c $(INCDIR)/stdlib.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/stdlib/mbtowc.c -o $@

$(OBJDIR)/memchr.o: std/9899-1990/string/memchr.c $(INCDIR)/string.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/string/memchr.c -o $@

$(OBJDIR)/memcmp.o: std/9899-1990/string/memcmp.c $(INCDIR)/string.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/string/memcmp.c -o $@

$(OBJDIR)/memcpy.o: std/9899-1990/string/memcpy.c $(INCDIR)/string.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/string/memcpy.c -o $@

$(OBJDIR)/memmove.o: std/9899-1990/string/memmove.c $(INCDIR)/string.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/string/memmove.c -o $@

$(OBJDIR)/memset.o: std/9899-1990/string/memset.c $(INCDIR)/string.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/string/memset.c -o $@

$(OBJDIR)/mktime.o: std/9899-1990/time/mktime.c $(INCDIR)/time.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/time/mktime.c -o $@

$(OBJDIR)/modf.o: std/9899-1990/math/modf.c $(INCDIR)/math.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/math/modf.c -o $@

$(OBJDIR)/perror.o: std/9899-1990/stdio/perror.c $(INCDIR)/stdio.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/stdio/perror.c -o $@

$(OBJDIR)/pow.o: std/9899-1990/math/pow.c $(INCDIR)/math.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/math/pow.c -o $@

$(OBJDIR)/printf.o: std/9899-1990/stdio/printf.c $(INCDIR)/stdio.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/stdio/printf.c -o $@

$(OBJDIR)/putc.o: std/9899-1990/stdio/putc.c $(INCDIR)/stdio.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/stdio/putc.c -o $@

$(OBJDIR)/putchar.o: std/9899-1990/stdio/putchar.c $(INCDIR)/stdio.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/stdio/putchar.c -o $@

$(OBJDIR)/puts.o: std/9899-1990/stdio/puts.c $(INCDIR)/stdio.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/stdio/puts.c -o $@

$(OBJDIR)/qsort.o: std/9899-1990/stdlib/qsort.c $(INCDIR)/stdlib.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/stdlib/qsort.c -o $@

$(OBJDIR)/raise.o: std/9899-1990/signal/raise.c $(INCDIR)/signal.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/signal/raise.c -o $@

$(OBJDIR)/rand.o: std/9899-1990/stdlib/rand.c $(INCDIR)/stdlib.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/stdlib/rand.c -o $@

$(OBJDIR)/realloc.o: std/9899-1990/stdlib/realloc.c $(INCDIR)/stdlib.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/stdlib/realloc.c -o $@

$(OBJDIR)/remove.o: std/9899-1990/stdio/remove.c $(INCDIR)/stdio.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/stdio/remove.c -o $@

$(OBJDIR)/rename.o: std/9899-1990/stdio/rename.c $(INCDIR)/stdio.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/stdio/rename.c -o $@

$(OBJDIR)/rewind.o: std/9899-1990/stdio/rewind.c $(INCDIR)/stdio.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/stdio/rewind.c -o $@

$(OBJDIR)/scanf.o: std/9899-1990/stdio/scanf.c $(INCDIR)/stdio.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/stdio/scanf.c -o $@

$(OBJDIR)/setbuf.o: std/9899-1990/stdio/setbuf.c $(INCDIR)/stdio.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/stdio/setbuf.c -o $@

$(OBJDIR)/setjmp.o: std/9899-1990/setjmp/setjmp.c $(INCDIR)/setjmp.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/setjmp/setjmp.c -o $@

$(OBJDIR)/setlocale.o: std/9899-1990/locale/setlocale.c $(INCDIR)/locale.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/locale/setlocale.c -o $@

$(OBJDIR)/setvbuf.o: std/9899-1990/stdio/setvbuf.c $(INCDIR)/stdio.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/stdio/setvbuf.c -o $@

$(OBJDIR)/signal.o: std/9899-1990/signal/signal.c $(INCDIR)/signal.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/signal/signal.c -o $@

$(OBJDIR)/sin.o: std/9899-1990/math/sin.c $(INCDIR)/math.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/math/sin.c -o $@

$(OBJDIR)/sinh.o: std/9899-1990/math/sinh.c $(INCDIR)/math.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/math/sinh.c -o $@

$(OBJDIR)/sprintf.o: std/9899-1990/stdio/sprintf.c $(INCDIR)/stdio.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/stdio/sprintf.c -o $@

$(OBJDIR)/sqrt.o: std/9899-1990/math/sqrt.c $(INCDIR)/math.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/math/sqrt.c -o $@

$(OBJDIR)/srand.o: std/9899-1990/stdlib/srand.c $(INCDIR)/stdlib.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/stdlib/srand.c -o $@

$(OBJDIR)/sscanf.o: std/9899-1990/stdio/sscanf.c $(INCDIR)/stdio.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/stdio/sscanf.c -o $@

$(OBJDIR)/strcat.o: std/9899-1990/string/strcat.c $(INCDIR)/string.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/string/strcat.c -o $@

$(OBJDIR)/strchr.o: std/9899-1990/string/strchr.c $(INCDIR)/string.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/string/strchr.c -o $@

$(OBJDIR)/strcmp.o: std/9899-1990/string/strcmp.c $(INCDIR)/string.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/string/strcmp.c -o $@

$(OBJDIR)/strcoll.o: std/9899-1990/string/strcoll.c $(INCDIR)/string.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/string/strcoll.c -o $@

$(OBJDIR)/strcpy.o: std/9899-1990/string/strcpy.c $(INCDIR)/string.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/string/strcpy.c -o $@

$(OBJDIR)/strcspn.o: std/9899-1990/string/strcspn.c $(INCDIR)/string.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/string/strcspn.c -o $@

$(OBJDIR)/strerror.o: std/9899-1990/string/strerror.c $(INCDIR)/string.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/string/strerror.c -o $@

$(OBJDIR)/strftime.o: std/9899-1990/time/strftime.c $(INCDIR)/time.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/time/strftime.c -o $@

$(OBJDIR)/strlen.o: std/9899-1990/string/strlen.c $(INCDIR)/string.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/string/strlen.c -o $@

$(OBJDIR)/strncat.o: std/9899-1990/string/strncat.c $(INCDIR)/string.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/string/strncat.c -o $@

$(OBJDIR)/strncmp.o: std/9899-1990/string/strncmp.c $(INCDIR)/string.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/string/strncmp.c -o $@

$(OBJDIR)/strncpy.o: std/9899-1990/string/strncpy.c $(INCDIR)/string.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/string/strncpy.c -o $@

$(OBJDIR)/strpbrk.o: std/9899-1990/string/strpbrk.c $(INCDIR)/string.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/string/strpbrk.c -o $@

$(OBJDIR)/strrchr.o: std/9899-1990/string/strrchr.c $(INCDIR)/string.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/string/strrchr.c -o $@

$(OBJDIR)/strspn.o: std/9899-1990/string/strspn.c $(INCDIR)/string.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/string/strspn.c -o $@

$(OBJDIR)/strstr.o: std/9899-1990/string/strstr.c $(INCDIR)/string.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/string/strstr.c -o $@

$(OBJDIR)/strtod.o: std/9899-1990/stdlib/strtod.c $(INCDIR)/stdlib.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/stdlib/strtod.c -o $@

$(OBJDIR)/strtok.o: std/9899-1990/string/strtok.c $(INCDIR)/string.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/string/strtok.c -o $@

$(OBJDIR)/strtol.o: std/9899-1990/stdlib/strtol.c $(INCDIR)/stdlib.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/stdlib/strtol.c -o $@

$(OBJDIR)/strtoul.o: std/9899-1990/stdlib/strtoul.c $(INCDIR)/stdlib.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/stdlib/strtoul.c -o $@

$(OBJDIR)/strxfrm.o: std/9899-1990/string/strxfrm.c $(INCDIR)/string.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/string/strxfrm.c -o $@

$(OBJDIR)/system.o: std/9899-1990/stdlib/system.c $(INCDIR)/stdlib.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/stdlib/system.c -o $@

$(OBJDIR)/tan.o: std/9899-1990/math/tan.c $(INCDIR)/math.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/math/tan.c -o $@

$(OBJDIR)/tanh.o: std/9899-1990/math/tanh.c $(INCDIR)/math.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/math/tanh.c -o $@

$(OBJDIR)/time.o: std/9899-1990/time/time.c $(INCDIR)/time.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/time/time.c -o $@

$(OBJDIR)/tmpfile.o: std/9899-1990/stdio/tmpfile.c $(INCDIR)/stdio.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/stdio/tmpfile.c -o $@

$(OBJDIR)/tmpnam.o: std/9899-1990/stdio/tmpnam.c $(INCDIR)/stdio.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/stdio/tmpnam.c -o $@

$(OBJDIR)/tolower.o: std/9899-1990/ctype/tolower.c $(INCDIR)/ctype.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/ctype/tolower.c -o $@

$(OBJDIR)/toupper.o: std/9899-1990/ctype/toupper.c $(INCDIR)/ctype.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/ctype/toupper.c -o $@

$(OBJDIR)/ungetc.o: std/9899-1990/stdio/ungetc.c $(INCDIR)/stdio.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/stdio/ungetc.c -o $@

$(OBJDIR)/vfprintf.o: std/9899-1990/stdio/vfprintf.c $(INCDIR)/stdio.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/stdio/vfprintf.c -o $@

$(OBJDIR)/vprintf.o: std/9899-1990/stdio/vprintf.c $(INCDIR)/stdio.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/stdio/vprintf.c -o $@

$(OBJDIR)/vsprintf.o: std/9899-1990/stdio/vsprintf.c $(INCDIR)/stdio.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/stdio/vsprintf.c -o $@

$(OBJDIR)/wcstombs.o: std/9899-1990/stdlib/wcstombs.c $(INCDIR)/stdlib.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/stdlib/wcstombs.c -o $@

$(OBJDIR)/wctomb.o: std/9899-1990/stdlib/wctomb.c $(INCDIR)/stdlib.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c std/9899-1990/stdlib/wctomb.c -o $@

$(OBJDIR)/libc.o: nonstd/libc.c
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c $? -o $@

$(OBJDIR)/x86-64.o: nonstd/x86-64.s
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c $? -o $@

all: libc.a libm.a

headers:
	@$(MAKE) -f .headers.mk $@

clean:
	rm -rf $(OBJDIR) *.a

git-clean: clean
	rm -rf .dep .headers.mk Makefile

