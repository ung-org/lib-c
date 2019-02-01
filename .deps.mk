.POSIX:

default: all

include config.mk

INCLUDES=-I$(INCDIR) -I. -Inonstd/stubs
CFLAGS=$(INCLUDES) -g -fno-builtin -nostdinc -nostdlib -nodefaultlibs -Werror -Wall -Wextra -fPIC

libc_OBJS = $(OBJDIR)/libc.o $(OBJDIR)/x86-64.o \
	$(OBJDIR)/isalnum.o \
	$(OBJDIR)/isalpha.o \
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
	$(OBJDIR)/isalnum.o \
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
	$(OBJDIR)/time.o \
	$(OBJDIR)/_POSIX_SOURCE.o \
	$(OBJDIR)/closedir.o \
	$(OBJDIR)/opendir.o \
	$(OBJDIR)/readdir.o \
	$(OBJDIR)/rewinddir.o \
	$(OBJDIR)/environ.o \
	$(OBJDIR)/creat.o \
	$(OBJDIR)/fcntl.o \
	$(OBJDIR)/open.o \
	$(OBJDIR)/getgrgid.o \
	$(OBJDIR)/getgrnam.o \
	$(OBJDIR)/getpwnam.o \
	$(OBJDIR)/getpwuid.o \
	$(OBJDIR)/siglongjmp.o \
	$(OBJDIR)/sigsetjmp.o \
	$(OBJDIR)/kill.o \
	$(OBJDIR)/sigaction.o \
	$(OBJDIR)/sigaddset.o \
	$(OBJDIR)/sigdelset.o \
	$(OBJDIR)/sigemptyset.o \
	$(OBJDIR)/sigfillset.o \
	$(OBJDIR)/sigismember.o \
	$(OBJDIR)/sigpending.o \
	$(OBJDIR)/sigprocmask.o \
	$(OBJDIR)/sigsuspend.o \
	$(OBJDIR)/fdopen.o \
	$(OBJDIR)/fileno.o \
	$(OBJDIR)/chmod.o \
	$(OBJDIR)/fstat.o \
	$(OBJDIR)/mkdir.o \
	$(OBJDIR)/mkfifo.o \
	$(OBJDIR)/stat.o \
	$(OBJDIR)/umask.o \
	$(OBJDIR)/times.o \
	$(OBJDIR)/uname.o \
	$(OBJDIR)/wait.o \
	$(OBJDIR)/waitpid.o \
	$(OBJDIR)/cfgetispeed.o \
	$(OBJDIR)/cfgetospeed.o \
	$(OBJDIR)/cfsetispeed.o \
	$(OBJDIR)/cfsetospeed.o \
	$(OBJDIR)/tcdrain.o \
	$(OBJDIR)/tcflow.o \
	$(OBJDIR)/tcflush.o \
	$(OBJDIR)/tcgetattr.o \
	$(OBJDIR)/tcsendbreak.o \
	$(OBJDIR)/tcsetattr.o \
	$(OBJDIR)/tzname.o \
	$(OBJDIR)/tzset.o \
	$(OBJDIR)/_exit.o \
	$(OBJDIR)/access.o \
	$(OBJDIR)/alarm.o \
	$(OBJDIR)/chdir.o \
	$(OBJDIR)/chown.o \
	$(OBJDIR)/close.o \
	$(OBJDIR)/ctermid.o \
	$(OBJDIR)/cuserid.o \
	$(OBJDIR)/dup.o \
	$(OBJDIR)/dup2.o \
	$(OBJDIR)/execl.o \
	$(OBJDIR)/execle.o \
	$(OBJDIR)/execlp.o \
	$(OBJDIR)/execv.o \
	$(OBJDIR)/execve.o \
	$(OBJDIR)/execvp.o \
	$(OBJDIR)/fork.o \
	$(OBJDIR)/fpathconf.o \
	$(OBJDIR)/getcwd.o \
	$(OBJDIR)/getegid.o \
	$(OBJDIR)/geteuid.o \
	$(OBJDIR)/getgid.o \
	$(OBJDIR)/getgroups.o \
	$(OBJDIR)/getlogin.o \
	$(OBJDIR)/getpgrp.o \
	$(OBJDIR)/getpid.o \
	$(OBJDIR)/getppid.o \
	$(OBJDIR)/getuid.o \
	$(OBJDIR)/isatty.o \
	$(OBJDIR)/link.o \
	$(OBJDIR)/lseek.o \
	$(OBJDIR)/pathconf.o \
	$(OBJDIR)/pause.o \
	$(OBJDIR)/pipe.o \
	$(OBJDIR)/read.o \
	$(OBJDIR)/rmdir.o \
	$(OBJDIR)/setgid.o \
	$(OBJDIR)/setpgid.o \
	$(OBJDIR)/setsid.o \
	$(OBJDIR)/setuid.o \
	$(OBJDIR)/sleep.o \
	$(OBJDIR)/sysconf.o \
	$(OBJDIR)/tcgetpgrp.o \
	$(OBJDIR)/tcsetpgrp.o \
	$(OBJDIR)/ttyname.o \
	$(OBJDIR)/unlink.o \
	$(OBJDIR)/write.o \
	$(OBJDIR)/utime.o \
	$(OBJDIR)/btowc.o \
	$(OBJDIR)/fgetwc.o \
	$(OBJDIR)/fgetws.o \
	$(OBJDIR)/fputwc.o \
	$(OBJDIR)/fputws.o \
	$(OBJDIR)/fwide.o \
	$(OBJDIR)/fwprintf.o \
	$(OBJDIR)/fwscanf.o \
	$(OBJDIR)/getwc.o \
	$(OBJDIR)/getwchar.o \
	$(OBJDIR)/mbrlen.o \
	$(OBJDIR)/mbrtowc.o \
	$(OBJDIR)/mbsinit.o \
	$(OBJDIR)/mbsrtowcs.o \
	$(OBJDIR)/putwc.o \
	$(OBJDIR)/putwchar.o \
	$(OBJDIR)/swprintf.o \
	$(OBJDIR)/swscanf.o \
	$(OBJDIR)/tm.o \
	$(OBJDIR)/ungetwc.o \
	$(OBJDIR)/vfwprintf.o \
	$(OBJDIR)/vswprintf.o \
	$(OBJDIR)/vwprintf.o \
	$(OBJDIR)/wcrtomb.o \
	$(OBJDIR)/wcscat.o \
	$(OBJDIR)/wcschr.o \
	$(OBJDIR)/wcscmp.o \
	$(OBJDIR)/wcscoll.o \
	$(OBJDIR)/wcscpy.o \
	$(OBJDIR)/wcscspn.o \
	$(OBJDIR)/wcsftime.o \
	$(OBJDIR)/wcslen.o \
	$(OBJDIR)/wcsncat.o \
	$(OBJDIR)/wcsncmp.o \
	$(OBJDIR)/wcsncpy.o \
	$(OBJDIR)/wcspbrk.o \
	$(OBJDIR)/wcsrchr.o \
	$(OBJDIR)/wcsrtombs.o \
	$(OBJDIR)/wcsspn.o \
	$(OBJDIR)/wcsstr.o \
	$(OBJDIR)/wcstod.o \
	$(OBJDIR)/wcstok.o \
	$(OBJDIR)/wcstol.o \
	$(OBJDIR)/wcstoul.o \
	$(OBJDIR)/wcsxfrm.o \
	$(OBJDIR)/wctob.o \
	$(OBJDIR)/wmemchr.o \
	$(OBJDIR)/wmemcmp.o \
	$(OBJDIR)/wmemcpy.o \
	$(OBJDIR)/wmemmove.o \
	$(OBJDIR)/wmemset.o \
	$(OBJDIR)/wprintf.o \
	$(OBJDIR)/wscanf.o \
	$(OBJDIR)/iswalnum.o \
	$(OBJDIR)/iswalpha.o \
	$(OBJDIR)/iswcntrl.o \
	$(OBJDIR)/iswctype.o \
	$(OBJDIR)/iswdigit.o \
	$(OBJDIR)/iswgraph.o \
	$(OBJDIR)/iswlower.o \
	$(OBJDIR)/iswprint.o \
	$(OBJDIR)/iswpunct.o \
	$(OBJDIR)/iswspace.o \
	$(OBJDIR)/iswupper.o \
	$(OBJDIR)/iswxdigit.o \
	$(OBJDIR)/towctrans.o \
	$(OBJDIR)/towlower.o \
	$(OBJDIR)/towupper.o \
	$(OBJDIR)/wctrans.o \
	$(OBJDIR)/wctype.o

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

$(OBJDIR)/_POSIX_SOURCE.o: src/POSIX.1-1988/_POSIX_SOURCE.c $(INCDIR)/
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/POSIX.1-1988/_POSIX_SOURCE.c -o $@

$(OBJDIR)/_exit.o: src/POSIX.1-1988/unistd/_exit.c $(INCDIR)/unistd.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/POSIX.1-1988/unistd/_exit.c -o $@

$(OBJDIR)/abort.o: src/9899-1990/stdlib/abort.c $(INCDIR)/stdlib.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/stdlib/abort.c -o $@

$(OBJDIR)/abs.o: src/9899-1990/stdlib/abs.c $(INCDIR)/stdlib.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/stdlib/abs.c -o $@

$(OBJDIR)/access.o: src/POSIX.1-1988/unistd/access.c $(INCDIR)/unistd.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/POSIX.1-1988/unistd/access.c -o $@

$(OBJDIR)/acos.o: src/9899-1990/math/acos.c $(INCDIR)/math.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/math/acos.c -o $@

$(OBJDIR)/alarm.o: src/POSIX.1-1988/unistd/alarm.c $(INCDIR)/unistd.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/POSIX.1-1988/unistd/alarm.c -o $@

$(OBJDIR)/asctime.o: src/9899-1990/time/asctime.c $(INCDIR)/time.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/time/asctime.c -o $@

$(OBJDIR)/asin.o: src/9899-1990/math/asin.c $(INCDIR)/math.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/math/asin.c -o $@

$(OBJDIR)/atan.o: src/9899-1990/math/atan.c $(INCDIR)/math.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/math/atan.c -o $@

$(OBJDIR)/atan2.o: src/9899-1990/math/atan2.c $(INCDIR)/math.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/math/atan2.c -o $@

$(OBJDIR)/atexit.o: src/9899-1990/stdlib/atexit.c $(INCDIR)/stdlib.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/stdlib/atexit.c -o $@

$(OBJDIR)/atof.o: src/9899-1990/stdlib/atof.c $(INCDIR)/stdlib.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/stdlib/atof.c -o $@

$(OBJDIR)/atoi.o: src/9899-1990/stdlib/atoi.c $(INCDIR)/stdlib.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/stdlib/atoi.c -o $@

$(OBJDIR)/atol.o: src/9899-1990/stdlib/atol.c $(INCDIR)/stdlib.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/stdlib/atol.c -o $@

$(OBJDIR)/bsearch.o: src/9899-1990/stdlib/bsearch.c $(INCDIR)/stdlib.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/stdlib/bsearch.c -o $@

$(OBJDIR)/btowc.o: src/9899-1990-AMD1/wchar/btowc.c $(INCDIR)/wchar.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990-AMD1/wchar/btowc.c -o $@

$(OBJDIR)/calloc.o: src/9899-1990/stdlib/calloc.c $(INCDIR)/stdlib.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/stdlib/calloc.c -o $@

$(OBJDIR)/ceil.o: src/9899-1990/math/ceil.c $(INCDIR)/math.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/math/ceil.c -o $@

$(OBJDIR)/cfgetispeed.o: src/POSIX.1-1988/termios/cfgetispeed.c $(INCDIR)/termios.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/POSIX.1-1988/termios/cfgetispeed.c -o $@

$(OBJDIR)/cfgetospeed.o: src/POSIX.1-1988/termios/cfgetospeed.c $(INCDIR)/termios.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/POSIX.1-1988/termios/cfgetospeed.c -o $@

$(OBJDIR)/cfsetispeed.o: src/POSIX.1-1988/termios/cfsetispeed.c $(INCDIR)/termios.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/POSIX.1-1988/termios/cfsetispeed.c -o $@

$(OBJDIR)/cfsetospeed.o: src/POSIX.1-1988/termios/cfsetospeed.c $(INCDIR)/termios.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/POSIX.1-1988/termios/cfsetospeed.c -o $@

$(OBJDIR)/chdir.o: src/POSIX.1-1988/unistd/chdir.c $(INCDIR)/unistd.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/POSIX.1-1988/unistd/chdir.c -o $@

$(OBJDIR)/chmod.o: src/POSIX.1-1988/sys/stat/chmod.c $(INCDIR)/sys/stat.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/POSIX.1-1988/sys/stat/chmod.c -o $@

$(OBJDIR)/chown.o: src/POSIX.1-1988/unistd/chown.c $(INCDIR)/unistd.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/POSIX.1-1988/unistd/chown.c -o $@

$(OBJDIR)/clearerr.o: src/9899-1990/stdio/clearerr.c $(INCDIR)/stdio.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/stdio/clearerr.c -o $@

$(OBJDIR)/clock.o: src/9899-1990/time/clock.c $(INCDIR)/time.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/time/clock.c -o $@

$(OBJDIR)/close.o: src/POSIX.1-1988/unistd/close.c $(INCDIR)/unistd.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/POSIX.1-1988/unistd/close.c -o $@

$(OBJDIR)/closedir.o: src/POSIX.1-1988/dirent/closedir.c $(INCDIR)/dirent.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/POSIX.1-1988/dirent/closedir.c -o $@

$(OBJDIR)/cos.o: src/9899-1990/math/cos.c $(INCDIR)/math.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/math/cos.c -o $@

$(OBJDIR)/cosh.o: src/9899-1990/math/cosh.c $(INCDIR)/math.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/math/cosh.c -o $@

$(OBJDIR)/creat.o: src/POSIX.1-1988/fcntl/creat.c $(INCDIR)/fcntl.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/POSIX.1-1988/fcntl/creat.c -o $@

$(OBJDIR)/ctermid.o: src/POSIX.1-1988/unistd/ctermid.c $(INCDIR)/unistd.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/POSIX.1-1988/unistd/ctermid.c -o $@

$(OBJDIR)/ctime.o: src/9899-1990/time/ctime.c $(INCDIR)/time.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/time/ctime.c -o $@

$(OBJDIR)/cuserid.o: src/POSIX.1-1988/unistd/cuserid.c $(INCDIR)/unistd.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/POSIX.1-1988/unistd/cuserid.c -o $@

$(OBJDIR)/difftime.o: src/9899-1990/time/difftime.c $(INCDIR)/time.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/time/difftime.c -o $@

$(OBJDIR)/div.o: src/9899-1990/stdlib/div.c $(INCDIR)/stdlib.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/stdlib/div.c -o $@

$(OBJDIR)/dup.o: src/POSIX.1-1988/unistd/dup.c $(INCDIR)/unistd.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/POSIX.1-1988/unistd/dup.c -o $@

$(OBJDIR)/dup2.o: src/POSIX.1-1988/unistd/dup2.c $(INCDIR)/unistd.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/POSIX.1-1988/unistd/dup2.c -o $@

$(OBJDIR)/environ.o: src/POSIX.1-1988/environ.c $(INCDIR)/
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/POSIX.1-1988/environ.c -o $@

$(OBJDIR)/execl.o: src/POSIX.1-1988/unistd/execl.c $(INCDIR)/unistd.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/POSIX.1-1988/unistd/execl.c -o $@

$(OBJDIR)/execle.o: src/POSIX.1-1988/unistd/execle.c $(INCDIR)/unistd.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/POSIX.1-1988/unistd/execle.c -o $@

$(OBJDIR)/execlp.o: src/POSIX.1-1988/unistd/execlp.c $(INCDIR)/unistd.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/POSIX.1-1988/unistd/execlp.c -o $@

$(OBJDIR)/execv.o: src/POSIX.1-1988/unistd/execv.c $(INCDIR)/unistd.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/POSIX.1-1988/unistd/execv.c -o $@

$(OBJDIR)/execve.o: src/POSIX.1-1988/unistd/execve.c $(INCDIR)/unistd.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/POSIX.1-1988/unistd/execve.c -o $@

$(OBJDIR)/execvp.o: src/POSIX.1-1988/unistd/execvp.c $(INCDIR)/unistd.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/POSIX.1-1988/unistd/execvp.c -o $@

$(OBJDIR)/exit.o: src/9899-1990/stdlib/exit.c $(INCDIR)/stdlib.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/stdlib/exit.c -o $@

$(OBJDIR)/exp.o: src/9899-1990/math/exp.c $(INCDIR)/math.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/math/exp.c -o $@

$(OBJDIR)/fabs.o: src/9899-1990/math/fabs.c $(INCDIR)/math.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/math/fabs.c -o $@

$(OBJDIR)/fclose.o: src/9899-1990/stdio/fclose.c $(INCDIR)/stdio.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/stdio/fclose.c -o $@

$(OBJDIR)/fcntl.o: src/POSIX.1-1988/fcntl/fcntl.c $(INCDIR)/fcntl.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/POSIX.1-1988/fcntl/fcntl.c -o $@

$(OBJDIR)/fdopen.o: src/POSIX.1-1988/stdio/fdopen.c $(INCDIR)/stdio.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/POSIX.1-1988/stdio/fdopen.c -o $@

$(OBJDIR)/feof.o: src/9899-1990/stdio/feof.c $(INCDIR)/stdio.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/stdio/feof.c -o $@

$(OBJDIR)/ferror.o: src/9899-1990/stdio/ferror.c $(INCDIR)/stdio.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/stdio/ferror.c -o $@

$(OBJDIR)/fflush.o: src/9899-1990/stdio/fflush.c $(INCDIR)/stdio.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/stdio/fflush.c -o $@

$(OBJDIR)/fgetc.o: src/9899-1990/stdio/fgetc.c $(INCDIR)/stdio.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/stdio/fgetc.c -o $@

$(OBJDIR)/fgetpos.o: src/9899-1990/stdio/fgetpos.c $(INCDIR)/stdio.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/stdio/fgetpos.c -o $@

$(OBJDIR)/fgets.o: src/9899-1990/stdio/fgets.c $(INCDIR)/stdio.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/stdio/fgets.c -o $@

$(OBJDIR)/fgetwc.o: src/9899-1990-AMD1/wchar/fgetwc.c $(INCDIR)/stdio.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990-AMD1/wchar/fgetwc.c -o $@

$(OBJDIR)/fgetws.o: src/9899-1990-AMD1/wchar/fgetws.c $(INCDIR)/wchar.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990-AMD1/wchar/fgetws.c -o $@

$(OBJDIR)/fileno.o: src/POSIX.1-1988/stdio/fileno.c $(INCDIR)/stdio.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/POSIX.1-1988/stdio/fileno.c -o $@

$(OBJDIR)/floor.o: src/9899-1990/math/floor.c $(INCDIR)/math.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/math/floor.c -o $@

$(OBJDIR)/fmod.o: src/9899-1990/math/fmod.c $(INCDIR)/math.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/math/fmod.c -o $@

$(OBJDIR)/fopen.o: src/9899-1990/stdio/fopen.c $(INCDIR)/stdio.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/stdio/fopen.c -o $@

$(OBJDIR)/fork.o: src/POSIX.1-1988/unistd/fork.c $(INCDIR)/unistd.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/POSIX.1-1988/unistd/fork.c -o $@

$(OBJDIR)/fpathconf.o: src/POSIX.1-1988/unistd/fpathconf.c $(INCDIR)/unistd.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/POSIX.1-1988/unistd/fpathconf.c -o $@

$(OBJDIR)/fprintf.o: src/9899-1990/stdio/fprintf.c $(INCDIR)/stdio.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/stdio/fprintf.c -o $@

$(OBJDIR)/fputc.o: src/9899-1990/stdio/fputc.c $(INCDIR)/stdio.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/stdio/fputc.c -o $@

$(OBJDIR)/fputs.o: src/9899-1990/stdio/fputs.c $(INCDIR)/stdio.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/stdio/fputs.c -o $@

$(OBJDIR)/fputwc.o: src/9899-1990-AMD1/wchar/fputwc.c $(INCDIR)/wchar.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990-AMD1/wchar/fputwc.c -o $@

$(OBJDIR)/fputws.o: src/9899-1990-AMD1/wchar/fputws.c $(INCDIR)/wchar.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990-AMD1/wchar/fputws.c -o $@

$(OBJDIR)/fread.o: src/9899-1990/stdio/fread.c $(INCDIR)/stdio.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/stdio/fread.c -o $@

$(OBJDIR)/free.o: src/9899-1990/stdlib/free.c $(INCDIR)/stdlib.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/stdlib/free.c -o $@

$(OBJDIR)/freopen.o: src/9899-1990/stdio/freopen.c $(INCDIR)/stdio.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/stdio/freopen.c -o $@

$(OBJDIR)/frexp.o: src/9899-1990/math/frexp.c $(INCDIR)/math.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/math/frexp.c -o $@

$(OBJDIR)/fscanf.o: src/9899-1990/stdio/fscanf.c $(INCDIR)/stdio.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/stdio/fscanf.c -o $@

$(OBJDIR)/fseek.o: src/9899-1990/stdio/fseek.c $(INCDIR)/stdio.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/stdio/fseek.c -o $@

$(OBJDIR)/fsetpos.o: src/9899-1990/stdio/fsetpos.c $(INCDIR)/stdio.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/stdio/fsetpos.c -o $@

$(OBJDIR)/fstat.o: src/POSIX.1-1988/sys/stat/fstat.c $(INCDIR)/sys/stat.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/POSIX.1-1988/sys/stat/fstat.c -o $@

$(OBJDIR)/ftell.o: src/9899-1990/stdio/ftell.c $(INCDIR)/stdio.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/stdio/ftell.c -o $@

$(OBJDIR)/fwide.o: src/9899-1990-AMD1/wchar/fwide.c $(INCDIR)/wchar.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990-AMD1/wchar/fwide.c -o $@

$(OBJDIR)/fwprintf.o: src/9899-1990-AMD1/wchar/fwprintf.c $(INCDIR)/wchar.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990-AMD1/wchar/fwprintf.c -o $@

$(OBJDIR)/fwrite.o: src/9899-1990/stdio/fwrite.c $(INCDIR)/stdio.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/stdio/fwrite.c -o $@

$(OBJDIR)/fwscanf.o: src/9899-1990-AMD1/wchar/fwscanf.c $(INCDIR)/wchar.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990-AMD1/wchar/fwscanf.c -o $@

$(OBJDIR)/getc.o: src/9899-1990/stdio/getc.c $(INCDIR)/stdio.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/stdio/getc.c -o $@

$(OBJDIR)/getchar.o: src/9899-1990/stdio/getchar.c $(INCDIR)/stdio.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/stdio/getchar.c -o $@

$(OBJDIR)/getcwd.o: src/POSIX.1-1988/unistd/getcwd.c $(INCDIR)/unistd.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/POSIX.1-1988/unistd/getcwd.c -o $@

$(OBJDIR)/getegid.o: src/POSIX.1-1988/unistd/getegid.c $(INCDIR)/unistd.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/POSIX.1-1988/unistd/getegid.c -o $@

$(OBJDIR)/getenv.o: src/9899-1990/stdlib/getenv.c $(INCDIR)/stdlib.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/stdlib/getenv.c -o $@

$(OBJDIR)/geteuid.o: src/POSIX.1-1988/unistd/geteuid.c $(INCDIR)/unistd.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/POSIX.1-1988/unistd/geteuid.c -o $@

$(OBJDIR)/getgid.o: src/POSIX.1-1988/unistd/getgid.c $(INCDIR)/unistd.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/POSIX.1-1988/unistd/getgid.c -o $@

$(OBJDIR)/getgrgid.o: src/POSIX.1-1988/grp/getgrgid.c $(INCDIR)/grp.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/POSIX.1-1988/grp/getgrgid.c -o $@

$(OBJDIR)/getgrnam.o: src/POSIX.1-1988/grp/getgrnam.c $(INCDIR)/grp.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/POSIX.1-1988/grp/getgrnam.c -o $@

$(OBJDIR)/getgroups.o: src/POSIX.1-1988/unistd/getgroups.c $(INCDIR)/unistd.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/POSIX.1-1988/unistd/getgroups.c -o $@

$(OBJDIR)/getlogin.o: src/POSIX.1-1988/unistd/getlogin.c $(INCDIR)/unistd.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/POSIX.1-1988/unistd/getlogin.c -o $@

$(OBJDIR)/getpgrp.o: src/POSIX.1-1988/unistd/getpgrp.c $(INCDIR)/unistd.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/POSIX.1-1988/unistd/getpgrp.c -o $@

$(OBJDIR)/getpid.o: src/POSIX.1-1988/unistd/getpid.c $(INCDIR)/unistd.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/POSIX.1-1988/unistd/getpid.c -o $@

$(OBJDIR)/getppid.o: src/POSIX.1-1988/unistd/getppid.c $(INCDIR)/unistd.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/POSIX.1-1988/unistd/getppid.c -o $@

$(OBJDIR)/getpwnam.o: src/POSIX.1-1988/pwd/getpwnam.c $(INCDIR)/pwd.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/POSIX.1-1988/pwd/getpwnam.c -o $@

$(OBJDIR)/getpwuid.o: src/POSIX.1-1988/pwd/getpwuid.c $(INCDIR)/pwd.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/POSIX.1-1988/pwd/getpwuid.c -o $@

$(OBJDIR)/gets.o: src/9899-1990/stdio/gets.c $(INCDIR)/stdio.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/stdio/gets.c -o $@

$(OBJDIR)/getuid.o: src/POSIX.1-1988/unistd/getuid.c $(INCDIR)/unistd.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/POSIX.1-1988/unistd/getuid.c -o $@

$(OBJDIR)/getwc.o: src/9899-1990-AMD1/wchar/getwc.c $(INCDIR)/wchar.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990-AMD1/wchar/getwc.c -o $@

$(OBJDIR)/getwchar.o: src/9899-1990-AMD1/wchar/getwchar.c $(INCDIR)/wchar.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990-AMD1/wchar/getwchar.c -o $@

$(OBJDIR)/gmtime.o: src/9899-1990/time/gmtime.c $(INCDIR)/time.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/time/gmtime.c -o $@

$(OBJDIR)/isalnum.o: src/9899-1990/ctype/isalnum.c $(INCDIR)/ctype.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/ctype/isalnum.c -o $@

$(OBJDIR)/isalpha.o: src/9899-1990/ctype/isalpha.c $(INCDIR)/ctype.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/ctype/isalpha.c -o $@

$(OBJDIR)/isatty.o: src/POSIX.1-1988/unistd/isatty.c $(INCDIR)/unistd.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/POSIX.1-1988/unistd/isatty.c -o $@

$(OBJDIR)/iscntrl.o: src/9899-1990/ctype/iscntrl.c $(INCDIR)/ctype.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/ctype/iscntrl.c -o $@

$(OBJDIR)/isdigit.o: src/9899-1990/ctype/isdigit.c $(INCDIR)/ctype.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/ctype/isdigit.c -o $@

$(OBJDIR)/isgraph.o: src/9899-1990/ctype/isgraph.c $(INCDIR)/ctype.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/ctype/isgraph.c -o $@

$(OBJDIR)/islower.o: src/9899-1990/ctype/islower.c $(INCDIR)/ctype.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/ctype/islower.c -o $@

$(OBJDIR)/isprint.o: src/9899-1990/ctype/isprint.c $(INCDIR)/ctype.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/ctype/isprint.c -o $@

$(OBJDIR)/ispunct.o: src/9899-1990/ctype/ispunct.c $(INCDIR)/ctype.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/ctype/ispunct.c -o $@

$(OBJDIR)/isspace.o: src/9899-1990/ctype/isspace.c $(INCDIR)/ctype.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/ctype/isspace.c -o $@

$(OBJDIR)/isupper.o: src/9899-1990/ctype/isupper.c $(INCDIR)/ctype.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/ctype/isupper.c -o $@

$(OBJDIR)/iswalnum.o: src/9899-1990-AMD1/wctype/iswalnum.c $(INCDIR)/wctype.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990-AMD1/wctype/iswalnum.c -o $@

$(OBJDIR)/iswalpha.o: src/9899-1990-AMD1/wctype/iswalpha.c $(INCDIR)/wctype.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990-AMD1/wctype/iswalpha.c -o $@

$(OBJDIR)/iswcntrl.o: src/9899-1990-AMD1/wctype/iswcntrl.c $(INCDIR)/wctype.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990-AMD1/wctype/iswcntrl.c -o $@

$(OBJDIR)/iswctype.o: src/9899-1990-AMD1/wctype/iswctype.c $(INCDIR)/wctype.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990-AMD1/wctype/iswctype.c -o $@

$(OBJDIR)/iswdigit.o: src/9899-1990-AMD1/wctype/iswdigit.c $(INCDIR)/wctype.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990-AMD1/wctype/iswdigit.c -o $@

$(OBJDIR)/iswgraph.o: src/9899-1990-AMD1/wctype/iswgraph.c $(INCDIR)/wctype.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990-AMD1/wctype/iswgraph.c -o $@

$(OBJDIR)/iswlower.o: src/9899-1990-AMD1/wctype/iswlower.c $(INCDIR)/wctype.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990-AMD1/wctype/iswlower.c -o $@

$(OBJDIR)/iswprint.o: src/9899-1990-AMD1/wctype/iswprint.c $(INCDIR)/wctype.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990-AMD1/wctype/iswprint.c -o $@

$(OBJDIR)/iswpunct.o: src/9899-1990-AMD1/wctype/iswpunct.c $(INCDIR)/wctype.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990-AMD1/wctype/iswpunct.c -o $@

$(OBJDIR)/iswspace.o: src/9899-1990-AMD1/wctype/iswspace.c $(INCDIR)/wctype.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990-AMD1/wctype/iswspace.c -o $@

$(OBJDIR)/iswupper.o: src/9899-1990-AMD1/wctype/iswupper.c $(INCDIR)/wctype.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990-AMD1/wctype/iswupper.c -o $@

$(OBJDIR)/iswxdigit.o: src/9899-1990-AMD1/wctype/iswxdigit.c $(INCDIR)/wctype.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990-AMD1/wctype/iswxdigit.c -o $@

$(OBJDIR)/isxdigit.o: src/9899-1990/ctype/isxdigit.c $(INCDIR)/ctype.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/ctype/isxdigit.c -o $@

$(OBJDIR)/kill.o: src/POSIX.1-1988/signal/kill.c $(INCDIR)/signal.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/POSIX.1-1988/signal/kill.c -o $@

$(OBJDIR)/labs.o: src/9899-1990/stdlib/labs.c $(INCDIR)/stdlib.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/stdlib/labs.c -o $@

$(OBJDIR)/ldexp.o: src/9899-1990/math/ldexp.c $(INCDIR)/math.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/math/ldexp.c -o $@

$(OBJDIR)/ldiv.o: src/9899-1990/stdlib/ldiv.c $(INCDIR)/stdlib.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/stdlib/ldiv.c -o $@

$(OBJDIR)/link.o: src/POSIX.1-1988/unistd/link.c $(INCDIR)/unistd.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/POSIX.1-1988/unistd/link.c -o $@

$(OBJDIR)/localeconv.o: src/9899-1990/locale/localeconv.c $(INCDIR)/locale.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/locale/localeconv.c -o $@

$(OBJDIR)/localtime.o: src/9899-1990/time/localtime.c $(INCDIR)/time.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/time/localtime.c -o $@

$(OBJDIR)/log.o: src/9899-1990/math/log.c $(INCDIR)/math.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/math/log.c -o $@

$(OBJDIR)/log10.o: src/9899-1990/math/log10.c $(INCDIR)/math.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/math/log10.c -o $@

$(OBJDIR)/longjmp.o: src/9899-1990/setjmp/longjmp.c $(INCDIR)/setjmp.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/setjmp/longjmp.c -o $@

$(OBJDIR)/lseek.o: src/POSIX.1-1988/unistd/lseek.c $(INCDIR)/unistd.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/POSIX.1-1988/unistd/lseek.c -o $@

$(OBJDIR)/malloc.o: src/9899-1990/stdlib/malloc.c $(INCDIR)/stdlib.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/stdlib/malloc.c -o $@

$(OBJDIR)/mblen.o: src/9899-1990/stdlib/mblen.c $(INCDIR)/stdlib.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/stdlib/mblen.c -o $@

$(OBJDIR)/mbrlen.o: src/9899-1990-AMD1/wchar/mbrlen.c $(INCDIR)/wchar.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990-AMD1/wchar/mbrlen.c -o $@

$(OBJDIR)/mbrtowc.o: src/9899-1990-AMD1/wchar/mbrtowc.c $(INCDIR)/wchar.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990-AMD1/wchar/mbrtowc.c -o $@

$(OBJDIR)/mbsinit.o: src/9899-1990-AMD1/wchar/mbsinit.c $(INCDIR)/wchar.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990-AMD1/wchar/mbsinit.c -o $@

$(OBJDIR)/mbsrtowcs.o: src/9899-1990-AMD1/wchar/mbsrtowcs.c $(INCDIR)/wchar.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990-AMD1/wchar/mbsrtowcs.c -o $@

$(OBJDIR)/mbstowcs.o: src/9899-1990/stdlib/mbstowcs.c $(INCDIR)/stdlib.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/stdlib/mbstowcs.c -o $@

$(OBJDIR)/mbtowc.o: src/9899-1990/stdlib/mbtowc.c $(INCDIR)/stdlib.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/stdlib/mbtowc.c -o $@

$(OBJDIR)/memchr.o: src/9899-1990/string/memchr.c $(INCDIR)/string.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/string/memchr.c -o $@

$(OBJDIR)/memcmp.o: src/9899-1990/string/memcmp.c $(INCDIR)/string.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/string/memcmp.c -o $@

$(OBJDIR)/memcpy.o: src/9899-1990/string/memcpy.c $(INCDIR)/string.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/string/memcpy.c -o $@

$(OBJDIR)/memmove.o: src/9899-1990/string/memmove.c $(INCDIR)/string.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/string/memmove.c -o $@

$(OBJDIR)/memset.o: src/9899-1990/string/memset.c $(INCDIR)/string.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/string/memset.c -o $@

$(OBJDIR)/mkdir.o: src/POSIX.1-1988/sys/stat/mkdir.c $(INCDIR)/sys/stat.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/POSIX.1-1988/sys/stat/mkdir.c -o $@

$(OBJDIR)/mkfifo.o: src/POSIX.1-1988/sys/stat/mkfifo.c $(INCDIR)/sys/stat.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/POSIX.1-1988/sys/stat/mkfifo.c -o $@

$(OBJDIR)/mktime.o: src/9899-1990/time/mktime.c $(INCDIR)/time.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/time/mktime.c -o $@

$(OBJDIR)/modf.o: src/9899-1990/math/modf.c $(INCDIR)/math.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/math/modf.c -o $@

$(OBJDIR)/open.o: src/POSIX.1-1988/fcntl/open.c $(INCDIR)/fcntl.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/POSIX.1-1988/fcntl/open.c -o $@

$(OBJDIR)/opendir.o: src/POSIX.1-1988/dirent/opendir.c $(INCDIR)/dirent.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/POSIX.1-1988/dirent/opendir.c -o $@

$(OBJDIR)/pathconf.o: src/POSIX.1-1988/unistd/pathconf.c $(INCDIR)/unistd.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/POSIX.1-1988/unistd/pathconf.c -o $@

$(OBJDIR)/pause.o: src/POSIX.1-1988/unistd/pause.c $(INCDIR)/unistd.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/POSIX.1-1988/unistd/pause.c -o $@

$(OBJDIR)/perror.o: src/9899-1990/stdio/perror.c $(INCDIR)/stdio.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/stdio/perror.c -o $@

$(OBJDIR)/pipe.o: src/POSIX.1-1988/unistd/pipe.c $(INCDIR)/unistd.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/POSIX.1-1988/unistd/pipe.c -o $@

$(OBJDIR)/pow.o: src/9899-1990/math/pow.c $(INCDIR)/math.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/math/pow.c -o $@

$(OBJDIR)/printf.o: src/9899-1990/stdio/printf.c $(INCDIR)/stdio.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/stdio/printf.c -o $@

$(OBJDIR)/putc.o: src/9899-1990/stdio/putc.c $(INCDIR)/stdio.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/stdio/putc.c -o $@

$(OBJDIR)/putchar.o: src/9899-1990/stdio/putchar.c $(INCDIR)/stdio.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/stdio/putchar.c -o $@

$(OBJDIR)/puts.o: src/9899-1990/stdio/puts.c $(INCDIR)/stdio.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/stdio/puts.c -o $@

$(OBJDIR)/putwc.o: src/9899-1990-AMD1/wchar/putwc.c $(INCDIR)/wchar.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990-AMD1/wchar/putwc.c -o $@

$(OBJDIR)/putwchar.o: src/9899-1990-AMD1/wchar/putwchar.c $(INCDIR)/wchar.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990-AMD1/wchar/putwchar.c -o $@

$(OBJDIR)/qsort.o: src/9899-1990/stdlib/qsort.c $(INCDIR)/stdlib.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/stdlib/qsort.c -o $@

$(OBJDIR)/raise.o: src/9899-1990/signal/raise.c $(INCDIR)/signal.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/signal/raise.c -o $@

$(OBJDIR)/rand.o: src/9899-1990/stdlib/rand.c $(INCDIR)/stdlib.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/stdlib/rand.c -o $@

$(OBJDIR)/read.o: src/POSIX.1-1988/unistd/read.c $(INCDIR)/unistd.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/POSIX.1-1988/unistd/read.c -o $@

$(OBJDIR)/readdir.o: src/POSIX.1-1988/dirent/readdir.c $(INCDIR)/dirent.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/POSIX.1-1988/dirent/readdir.c -o $@

$(OBJDIR)/realloc.o: src/9899-1990/stdlib/realloc.c $(INCDIR)/stdlib.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/stdlib/realloc.c -o $@

$(OBJDIR)/remove.o: src/9899-1990/stdio/remove.c $(INCDIR)/stdio.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/stdio/remove.c -o $@

$(OBJDIR)/rename.o: src/9899-1990/stdio/rename.c $(INCDIR)/stdio.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/stdio/rename.c -o $@

$(OBJDIR)/rewind.o: src/9899-1990/stdio/rewind.c $(INCDIR)/stdio.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/stdio/rewind.c -o $@

$(OBJDIR)/rewinddir.o: src/POSIX.1-1988/dirent/rewinddir.c $(INCDIR)/dirent.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/POSIX.1-1988/dirent/rewinddir.c -o $@

$(OBJDIR)/rmdir.o: src/POSIX.1-1988/unistd/rmdir.c $(INCDIR)/unistd.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/POSIX.1-1988/unistd/rmdir.c -o $@

$(OBJDIR)/scanf.o: src/9899-1990/stdio/scanf.c $(INCDIR)/stdio.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/stdio/scanf.c -o $@

$(OBJDIR)/setbuf.o: src/9899-1990/stdio/setbuf.c $(INCDIR)/stdio.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/stdio/setbuf.c -o $@

$(OBJDIR)/setgid.o: src/POSIX.1-1988/unistd/setgid.c $(INCDIR)/unistd.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/POSIX.1-1988/unistd/setgid.c -o $@

$(OBJDIR)/setjmp.o: src/9899-1990/setjmp/setjmp.c $(INCDIR)/setjmp.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/setjmp/setjmp.c -o $@

$(OBJDIR)/setlocale.o: src/9899-1990/locale/setlocale.c $(INCDIR)/locale.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/locale/setlocale.c -o $@

$(OBJDIR)/setpgid.o: src/POSIX.1-1988/unistd/setpgid.c $(INCDIR)/unistd.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/POSIX.1-1988/unistd/setpgid.c -o $@

$(OBJDIR)/setsid.o: src/POSIX.1-1988/unistd/setsid.c $(INCDIR)/unistd.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/POSIX.1-1988/unistd/setsid.c -o $@

$(OBJDIR)/setuid.o: src/POSIX.1-1988/unistd/setuid.c $(INCDIR)/unistd.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/POSIX.1-1988/unistd/setuid.c -o $@

$(OBJDIR)/setvbuf.o: src/9899-1990/stdio/setvbuf.c $(INCDIR)/stdio.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/stdio/setvbuf.c -o $@

$(OBJDIR)/sigaction.o: src/POSIX.1-1988/signal/sigaction.c $(INCDIR)/signal.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/POSIX.1-1988/signal/sigaction.c -o $@

$(OBJDIR)/sigaddset.o: src/POSIX.1-1988/signal/sigaddset.c $(INCDIR)/signal.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/POSIX.1-1988/signal/sigaddset.c -o $@

$(OBJDIR)/sigdelset.o: src/POSIX.1-1988/signal/sigdelset.c $(INCDIR)/signal.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/POSIX.1-1988/signal/sigdelset.c -o $@

$(OBJDIR)/sigemptyset.o: src/POSIX.1-1988/signal/sigemptyset.c $(INCDIR)/signal.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/POSIX.1-1988/signal/sigemptyset.c -o $@

$(OBJDIR)/sigfillset.o: src/POSIX.1-1988/signal/sigfillset.c $(INCDIR)/signal.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/POSIX.1-1988/signal/sigfillset.c -o $@

$(OBJDIR)/sigismember.o: src/POSIX.1-1988/signal/sigismember.c $(INCDIR)/signal.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/POSIX.1-1988/signal/sigismember.c -o $@

$(OBJDIR)/siglongjmp.o: src/POSIX.1-1988/setjmp/siglongjmp.c $(INCDIR)/setjmp.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/POSIX.1-1988/setjmp/siglongjmp.c -o $@

$(OBJDIR)/signal.o: src/9899-1990/signal/signal.c $(INCDIR)/signal.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/signal/signal.c -o $@

$(OBJDIR)/sigpending.o: src/POSIX.1-1988/signal/sigpending.c $(INCDIR)/signal.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/POSIX.1-1988/signal/sigpending.c -o $@

$(OBJDIR)/sigprocmask.o: src/POSIX.1-1988/signal/sigprocmask.c $(INCDIR)/signal.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/POSIX.1-1988/signal/sigprocmask.c -o $@

$(OBJDIR)/sigsetjmp.o: src/POSIX.1-1988/setjmp/sigsetjmp.c $(INCDIR)/setjmp.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/POSIX.1-1988/setjmp/sigsetjmp.c -o $@

$(OBJDIR)/sigsuspend.o: src/POSIX.1-1988/signal/sigsuspend.c $(INCDIR)/signal.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/POSIX.1-1988/signal/sigsuspend.c -o $@

$(OBJDIR)/sin.o: src/9899-1990/math/sin.c $(INCDIR)/math.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/math/sin.c -o $@

$(OBJDIR)/sinh.o: src/9899-1990/math/sinh.c $(INCDIR)/math.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/math/sinh.c -o $@

$(OBJDIR)/sleep.o: src/POSIX.1-1988/unistd/sleep.c $(INCDIR)/unistd.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/POSIX.1-1988/unistd/sleep.c -o $@

$(OBJDIR)/sprintf.o: src/9899-1990/stdio/sprintf.c $(INCDIR)/stdio.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/stdio/sprintf.c -o $@

$(OBJDIR)/sqrt.o: src/9899-1990/math/sqrt.c $(INCDIR)/math.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/math/sqrt.c -o $@

$(OBJDIR)/srand.o: src/9899-1990/stdlib/srand.c $(INCDIR)/stdlib.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/stdlib/srand.c -o $@

$(OBJDIR)/sscanf.o: src/9899-1990/stdio/sscanf.c $(INCDIR)/stdio.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/stdio/sscanf.c -o $@

$(OBJDIR)/stat.o: src/POSIX.1-1988/sys/stat/stat.c $(INCDIR)/sys/stat.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/POSIX.1-1988/sys/stat/stat.c -o $@

$(OBJDIR)/strcat.o: src/9899-1990/string/strcat.c $(INCDIR)/string.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/string/strcat.c -o $@

$(OBJDIR)/strchr.o: src/9899-1990/string/strchr.c $(INCDIR)/string.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/string/strchr.c -o $@

$(OBJDIR)/strcmp.o: src/9899-1990/string/strcmp.c $(INCDIR)/string.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/string/strcmp.c -o $@

$(OBJDIR)/strcoll.o: src/9899-1990/string/strcoll.c $(INCDIR)/string.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/string/strcoll.c -o $@

$(OBJDIR)/strcpy.o: src/9899-1990/string/strcpy.c $(INCDIR)/string.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/string/strcpy.c -o $@

$(OBJDIR)/strcspn.o: src/9899-1990/string/strcspn.c $(INCDIR)/string.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/string/strcspn.c -o $@

$(OBJDIR)/strerror.o: src/9899-1990/string/strerror.c $(INCDIR)/string.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/string/strerror.c -o $@

$(OBJDIR)/strftime.o: src/9899-1990/time/strftime.c $(INCDIR)/time.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/time/strftime.c -o $@

$(OBJDIR)/strlen.o: src/9899-1990/string/strlen.c $(INCDIR)/string.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/string/strlen.c -o $@

$(OBJDIR)/strncat.o: src/9899-1990/string/strncat.c $(INCDIR)/string.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/string/strncat.c -o $@

$(OBJDIR)/strncmp.o: src/9899-1990/string/strncmp.c $(INCDIR)/string.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/string/strncmp.c -o $@

$(OBJDIR)/strncpy.o: src/9899-1990/string/strncpy.c $(INCDIR)/string.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/string/strncpy.c -o $@

$(OBJDIR)/strpbrk.o: src/9899-1990/string/strpbrk.c $(INCDIR)/string.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/string/strpbrk.c -o $@

$(OBJDIR)/strrchr.o: src/9899-1990/string/strrchr.c $(INCDIR)/string.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/string/strrchr.c -o $@

$(OBJDIR)/strspn.o: src/9899-1990/string/strspn.c $(INCDIR)/string.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/string/strspn.c -o $@

$(OBJDIR)/strstr.o: src/9899-1990/string/strstr.c $(INCDIR)/string.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/string/strstr.c -o $@

$(OBJDIR)/strtod.o: src/9899-1990/stdlib/strtod.c $(INCDIR)/stdlib.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/stdlib/strtod.c -o $@

$(OBJDIR)/strtok.o: src/9899-1990/string/strtok.c $(INCDIR)/string.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/string/strtok.c -o $@

$(OBJDIR)/strtol.o: src/9899-1990/stdlib/strtol.c $(INCDIR)/stdlib.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/stdlib/strtol.c -o $@

$(OBJDIR)/strtoul.o: src/9899-1990/stdlib/strtoul.c $(INCDIR)/stdlib.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/stdlib/strtoul.c -o $@

$(OBJDIR)/strxfrm.o: src/9899-1990/string/strxfrm.c $(INCDIR)/string.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/string/strxfrm.c -o $@

$(OBJDIR)/swprintf.o: src/9899-1990-AMD1/wchar/swprintf.c $(INCDIR)/wchar.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990-AMD1/wchar/swprintf.c -o $@

$(OBJDIR)/swscanf.o: src/9899-1990-AMD1/wchar/swscanf.c $(INCDIR)/wchar.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990-AMD1/wchar/swscanf.c -o $@

$(OBJDIR)/sysconf.o: src/POSIX.1-1988/unistd/sysconf.c $(INCDIR)/unistd.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/POSIX.1-1988/unistd/sysconf.c -o $@

$(OBJDIR)/system.o: src/9899-1990/stdlib/system.c $(INCDIR)/stdlib.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/stdlib/system.c -o $@

$(OBJDIR)/tan.o: src/9899-1990/math/tan.c $(INCDIR)/math.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/math/tan.c -o $@

$(OBJDIR)/tanh.o: src/9899-1990/math/tanh.c $(INCDIR)/math.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/math/tanh.c -o $@

$(OBJDIR)/tcdrain.o: src/POSIX.1-1988/termios/tcdrain.c $(INCDIR)/termios.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/POSIX.1-1988/termios/tcdrain.c -o $@

$(OBJDIR)/tcflow.o: src/POSIX.1-1988/termios/tcflow.c $(INCDIR)/termios.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/POSIX.1-1988/termios/tcflow.c -o $@

$(OBJDIR)/tcflush.o: src/POSIX.1-1988/termios/tcflush.c $(INCDIR)/termios.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/POSIX.1-1988/termios/tcflush.c -o $@

$(OBJDIR)/tcgetattr.o: src/POSIX.1-1988/termios/tcgetattr.c $(INCDIR)/termios.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/POSIX.1-1988/termios/tcgetattr.c -o $@

$(OBJDIR)/tcgetpgrp.o: src/POSIX.1-1988/unistd/tcgetpgrp.c $(INCDIR)/unistd.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/POSIX.1-1988/unistd/tcgetpgrp.c -o $@

$(OBJDIR)/tcsendbreak.o: src/POSIX.1-1988/termios/tcsendbreak.c $(INCDIR)/termios.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/POSIX.1-1988/termios/tcsendbreak.c -o $@

$(OBJDIR)/tcsetattr.o: src/POSIX.1-1988/termios/tcsetattr.c $(INCDIR)/termios.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/POSIX.1-1988/termios/tcsetattr.c -o $@

$(OBJDIR)/tcsetpgrp.o: src/POSIX.1-1988/unistd/tcsetpgrp.c $(INCDIR)/unistd.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/POSIX.1-1988/unistd/tcsetpgrp.c -o $@

$(OBJDIR)/time.o: src/9899-1990/time/time.c $(INCDIR)/time.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/time/time.c -o $@

$(OBJDIR)/times.o: src/POSIX.1-1988/sys/times/times.c $(INCDIR)/sys/times.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/POSIX.1-1988/sys/times/times.c -o $@

$(OBJDIR)/tm.o: src/9899-1990-AMD1/wchar/tm.c $(INCDIR)/wchar.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990-AMD1/wchar/tm.c -o $@

$(OBJDIR)/tmpfile.o: src/9899-1990/stdio/tmpfile.c $(INCDIR)/stdio.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/stdio/tmpfile.c -o $@

$(OBJDIR)/tmpnam.o: src/9899-1990/stdio/tmpnam.c $(INCDIR)/stdio.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/stdio/tmpnam.c -o $@

$(OBJDIR)/tolower.o: src/9899-1990/ctype/tolower.c $(INCDIR)/ctype.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/ctype/tolower.c -o $@

$(OBJDIR)/toupper.o: src/9899-1990/ctype/toupper.c $(INCDIR)/ctype.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/ctype/toupper.c -o $@

$(OBJDIR)/towctrans.o: src/9899-1990-AMD1/wctype/towctrans.c $(INCDIR)/wctype.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990-AMD1/wctype/towctrans.c -o $@

$(OBJDIR)/towlower.o: src/9899-1990-AMD1/wctype/towlower.c $(INCDIR)/wctype.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990-AMD1/wctype/towlower.c -o $@

$(OBJDIR)/towupper.o: src/9899-1990-AMD1/wctype/towupper.c $(INCDIR)/wctype.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990-AMD1/wctype/towupper.c -o $@

$(OBJDIR)/ttyname.o: src/POSIX.1-1988/unistd/ttyname.c $(INCDIR)/unistd.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/POSIX.1-1988/unistd/ttyname.c -o $@

$(OBJDIR)/tzname.o: src/POSIX.1-1988/time/tzname.c $(INCDIR)/time.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/POSIX.1-1988/time/tzname.c -o $@

$(OBJDIR)/tzset.o: src/POSIX.1-1988/time/tzset.c $(INCDIR)/time.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/POSIX.1-1988/time/tzset.c -o $@

$(OBJDIR)/umask.o: src/POSIX.1-1988/sys/stat/umask.c $(INCDIR)/sys/stat.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/POSIX.1-1988/sys/stat/umask.c -o $@

$(OBJDIR)/uname.o: src/POSIX.1-1988/sys/utsname/uname.c $(INCDIR)/sys/utsname.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/POSIX.1-1988/sys/utsname/uname.c -o $@

$(OBJDIR)/ungetc.o: src/9899-1990/stdio/ungetc.c $(INCDIR)/stdio.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/stdio/ungetc.c -o $@

$(OBJDIR)/ungetwc.o: src/9899-1990-AMD1/wchar/ungetwc.c $(INCDIR)/wchar.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990-AMD1/wchar/ungetwc.c -o $@

$(OBJDIR)/unlink.o: src/POSIX.1-1988/unistd/unlink.c $(INCDIR)/unistd.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/POSIX.1-1988/unistd/unlink.c -o $@

$(OBJDIR)/utime.o: src/POSIX.1-1988/utime/utime.c $(INCDIR)/utime.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/POSIX.1-1988/utime/utime.c -o $@

$(OBJDIR)/vfprintf.o: src/9899-1990/stdio/vfprintf.c $(INCDIR)/stdio.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/stdio/vfprintf.c -o $@

$(OBJDIR)/vfwprintf.o: src/9899-1990-AMD1/wchar/vfwprintf.c $(INCDIR)/wchar.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990-AMD1/wchar/vfwprintf.c -o $@

$(OBJDIR)/vprintf.o: src/9899-1990/stdio/vprintf.c $(INCDIR)/stdio.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/stdio/vprintf.c -o $@

$(OBJDIR)/vsprintf.o: src/9899-1990/stdio/vsprintf.c $(INCDIR)/stdio.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/stdio/vsprintf.c -o $@

$(OBJDIR)/vswprintf.o: src/9899-1990-AMD1/wchar/vswprintf.c $(INCDIR)/stdarg.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990-AMD1/wchar/vswprintf.c -o $@

$(OBJDIR)/vwprintf.o: src/9899-1990-AMD1/wchar/vwprintf.c $(INCDIR)/wchar.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990-AMD1/wchar/vwprintf.c -o $@

$(OBJDIR)/wait.o: src/POSIX.1-1988/sys/wait/wait.c $(INCDIR)/sys/wait.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/POSIX.1-1988/sys/wait/wait.c -o $@

$(OBJDIR)/waitpid.o: src/POSIX.1-1988/sys/wait/waitpid.c $(INCDIR)/sys/wait.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/POSIX.1-1988/sys/wait/waitpid.c -o $@

$(OBJDIR)/wcrtomb.o: src/9899-1990-AMD1/wchar/wcrtomb.c $(INCDIR)/wchar.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990-AMD1/wchar/wcrtomb.c -o $@

$(OBJDIR)/wcscat.o: src/9899-1990-AMD1/wchar/wcscat.c $(INCDIR)/wchar.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990-AMD1/wchar/wcscat.c -o $@

$(OBJDIR)/wcschr.o: src/9899-1990-AMD1/wchar/wcschr.c $(INCDIR)/wchar.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990-AMD1/wchar/wcschr.c -o $@

$(OBJDIR)/wcscmp.o: src/9899-1990-AMD1/wchar/wcscmp.c $(INCDIR)/wchar.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990-AMD1/wchar/wcscmp.c -o $@

$(OBJDIR)/wcscoll.o: src/9899-1990-AMD1/wchar/wcscoll.c $(INCDIR)/wchar.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990-AMD1/wchar/wcscoll.c -o $@

$(OBJDIR)/wcscpy.o: src/9899-1990-AMD1/wchar/wcscpy.c $(INCDIR)/wchar.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990-AMD1/wchar/wcscpy.c -o $@

$(OBJDIR)/wcscspn.o: src/9899-1990-AMD1/wchar/wcscspn.c $(INCDIR)/wchar.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990-AMD1/wchar/wcscspn.c -o $@

$(OBJDIR)/wcsftime.o: src/9899-1990-AMD1/wchar/wcsftime.c $(INCDIR)/wchar.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990-AMD1/wchar/wcsftime.c -o $@

$(OBJDIR)/wcslen.o: src/9899-1990-AMD1/wchar/wcslen.c $(INCDIR)/wchar.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990-AMD1/wchar/wcslen.c -o $@

$(OBJDIR)/wcsncat.o: src/9899-1990-AMD1/wchar/wcsncat.c $(INCDIR)/wchar.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990-AMD1/wchar/wcsncat.c -o $@

$(OBJDIR)/wcsncmp.o: src/9899-1990-AMD1/wchar/wcsncmp.c $(INCDIR)/wchar.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990-AMD1/wchar/wcsncmp.c -o $@

$(OBJDIR)/wcsncpy.o: src/9899-1990-AMD1/wchar/wcsncpy.c $(INCDIR)/wchar.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990-AMD1/wchar/wcsncpy.c -o $@

$(OBJDIR)/wcspbrk.o: src/9899-1990-AMD1/wchar/wcspbrk.c $(INCDIR)/wchar.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990-AMD1/wchar/wcspbrk.c -o $@

$(OBJDIR)/wcsrchr.o: src/9899-1990-AMD1/wchar/wcsrchr.c $(INCDIR)/wchar.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990-AMD1/wchar/wcsrchr.c -o $@

$(OBJDIR)/wcsrtombs.o: src/9899-1990-AMD1/wchar/wcsrtombs.c $(INCDIR)/wchar.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990-AMD1/wchar/wcsrtombs.c -o $@

$(OBJDIR)/wcsspn.o: src/9899-1990-AMD1/wchar/wcsspn.c $(INCDIR)/wchar.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990-AMD1/wchar/wcsspn.c -o $@

$(OBJDIR)/wcsstr.o: src/9899-1990-AMD1/wchar/wcsstr.c $(INCDIR)/wchar.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990-AMD1/wchar/wcsstr.c -o $@

$(OBJDIR)/wcstod.o: src/9899-1990-AMD1/wchar/wcstod.c $(INCDIR)/wchar.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990-AMD1/wchar/wcstod.c -o $@

$(OBJDIR)/wcstok.o: src/9899-1990-AMD1/wchar/wcstok.c $(INCDIR)/wchar.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990-AMD1/wchar/wcstok.c -o $@

$(OBJDIR)/wcstol.o: src/9899-1990-AMD1/wchar/wcstol.c $(INCDIR)/wchar.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990-AMD1/wchar/wcstol.c -o $@

$(OBJDIR)/wcstombs.o: src/9899-1990/stdlib/wcstombs.c $(INCDIR)/stdlib.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/stdlib/wcstombs.c -o $@

$(OBJDIR)/wcstoul.o: src/9899-1990-AMD1/wchar/wcstoul.c $(INCDIR)/wchar.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990-AMD1/wchar/wcstoul.c -o $@

$(OBJDIR)/wcsxfrm.o: src/9899-1990-AMD1/wchar/wcsxfrm.c $(INCDIR)/wchar.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990-AMD1/wchar/wcsxfrm.c -o $@

$(OBJDIR)/wctob.o: src/9899-1990-AMD1/wchar/wctob.c $(INCDIR)/wchar.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990-AMD1/wchar/wctob.c -o $@

$(OBJDIR)/wctomb.o: src/9899-1990/stdlib/wctomb.c $(INCDIR)/stdlib.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990/stdlib/wctomb.c -o $@

$(OBJDIR)/wctrans.o: src/9899-1990-AMD1/wctype/wctrans.c $(INCDIR)/wctype.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990-AMD1/wctype/wctrans.c -o $@

$(OBJDIR)/wctype.o: src/9899-1990-AMD1/wctype/wctype.c $(INCDIR)/wctype.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990-AMD1/wctype/wctype.c -o $@

$(OBJDIR)/wmemchr.o: src/9899-1990-AMD1/wchar/wmemchr.c $(INCDIR)/wchar.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990-AMD1/wchar/wmemchr.c -o $@

$(OBJDIR)/wmemcmp.o: src/9899-1990-AMD1/wchar/wmemcmp.c $(INCDIR)/wchar.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990-AMD1/wchar/wmemcmp.c -o $@

$(OBJDIR)/wmemcpy.o: src/9899-1990-AMD1/wchar/wmemcpy.c $(INCDIR)/wchar.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990-AMD1/wchar/wmemcpy.c -o $@

$(OBJDIR)/wmemmove.o: src/9899-1990-AMD1/wchar/wmemmove.c $(INCDIR)/wchar.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990-AMD1/wchar/wmemmove.c -o $@

$(OBJDIR)/wmemset.o: src/9899-1990-AMD1/wchar/wmemset.c $(INCDIR)/wchar.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990-AMD1/wchar/wmemset.c -o $@

$(OBJDIR)/wprintf.o: src/9899-1990-AMD1/wchar/wprintf.c $(INCDIR)/wchar.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990-AMD1/wchar/wprintf.c -o $@

$(OBJDIR)/write.o: src/POSIX.1-1988/unistd/write.c $(INCDIR)/unistd.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/POSIX.1-1988/unistd/write.c -o $@

$(OBJDIR)/wscanf.o: src/9899-1990-AMD1/wchar/wscanf.c $(INCDIR)/wchar.h
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c src/9899-1990-AMD1/wchar/wscanf.c -o $@

$(OBJDIR)/libc.o: nonstd/libc.c
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c $? -o $@

$(OBJDIR)/x86-64.o: nonstd/x86-64.s
	-@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c $? -o $@

all: libc.a libm.a

