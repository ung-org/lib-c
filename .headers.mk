.POSIX:

include config.mk

default: headers

assert_h_SOURCES =  \
	src/9899-1990/assert/assert.c

$(INCDIR)/assert.h: $(assert_h_SOURCES)
	sh mkh.sh $@ $(assert_h_SOURCES)

cpio_h_SOURCES =  \
	src/POSIX.1-1988/cpio/C_IRGRP.c \
	src/POSIX.1-1988/cpio/C_IROTH.c \
	src/POSIX.1-1988/cpio/C_IRUSR.c \
	src/POSIX.1-1988/cpio/C_ISBLK.c \
	src/POSIX.1-1988/cpio/C_ISCHR.c \
	src/POSIX.1-1988/cpio/C_ISCTG.c \
	src/POSIX.1-1988/cpio/C_ISDIR.c \
	src/POSIX.1-1988/cpio/C_ISFIFO.c \
	src/POSIX.1-1988/cpio/C_ISGID.c \
	src/POSIX.1-1988/cpio/C_ISLNK.c \
	src/POSIX.1-1988/cpio/C_ISREG.c \
	src/POSIX.1-1988/cpio/C_ISSOCK.c \
	src/POSIX.1-1988/cpio/C_ISUID.c \
	src/POSIX.1-1988/cpio/C_ISVTX.c \
	src/POSIX.1-1988/cpio/C_IWGRP.c \
	src/POSIX.1-1988/cpio/C_IWOTH.c \
	src/POSIX.1-1988/cpio/C_IWUSR.c \
	src/POSIX.1-1988/cpio/C_IXGRP.c \
	src/POSIX.1-1988/cpio/C_IXOTH.c \
	src/POSIX.1-1988/cpio/C_IXUSR.c \
	src/POSIX.1-1988/cpio/MAGIC.c

$(INCDIR)/cpio.h: $(cpio_h_SOURCES)
	sh mkh.sh $@ $(cpio_h_SOURCES)

ctype_h_SOURCES =  \
	src/9899-1990/ctype/isalnum.c \
	src/9899-1990/ctype/isalpha.c \
	src/9899-1990/ctype/iscntrl.c \
	src/9899-1990/ctype/isdigit.c \
	src/9899-1990/ctype/isgraph.c \
	src/9899-1990/ctype/islower.c \
	src/9899-1990/ctype/isprint.c \
	src/9899-1990/ctype/ispunct.c \
	src/9899-1990/ctype/isspace.c \
	src/9899-1990/ctype/isupper.c \
	src/9899-1990/ctype/isxdigit.c \
	src/9899-1990/ctype/tolower.c \
	src/9899-1990/ctype/toupper.c

$(INCDIR)/ctype.h: $(ctype_h_SOURCES)
	sh mkh.sh $@ $(ctype_h_SOURCES)

dirent_h_SOURCES =  \
	src/POSIX.1-1988/dirent/DIR.c \
	src/POSIX.1-1988/dirent/closedir.c \
	src/POSIX.1-1988/dirent/opendir.c \
	src/POSIX.1-1988/dirent/readdir.c \
	src/POSIX.1-1988/dirent/rewinddir.c \
	src/POSIX.1-1988/dirent/struct_dirent.c

$(INCDIR)/dirent.h: $(dirent_h_SOURCES)
	sh mkh.sh $@ $(dirent_h_SOURCES)

errno_h_SOURCES =  \
	src/9899-1990/errno/EDOM.c \
	src/9899-1990/errno/ERANGE.c \
	src/9899-1990/errno/errno.c \
	src/POSIX.1-1988/errno/E2BIG.c \
	src/POSIX.1-1988/errno/EACCES.c \
	src/POSIX.1-1988/errno/EAGAIN.c \
	src/POSIX.1-1988/errno/EBADF.c \
	src/POSIX.1-1988/errno/EBUSY.c \
	src/POSIX.1-1988/errno/ECHILD.c \
	src/POSIX.1-1988/errno/EDEADLK.c \
	src/POSIX.1-1988/errno/EEXIST.c \
	src/POSIX.1-1988/errno/EFAULT.c \
	src/POSIX.1-1988/errno/EFBIG.c \
	src/POSIX.1-1988/errno/EINTR.c \
	src/POSIX.1-1988/errno/EINVAL.c \
	src/POSIX.1-1988/errno/EIO.c \
	src/POSIX.1-1988/errno/EISDIR.c \
	src/POSIX.1-1988/errno/EMFILE.c \
	src/POSIX.1-1988/errno/EMLINK.c \
	src/POSIX.1-1988/errno/ENAMETOOLONG.c \
	src/POSIX.1-1988/errno/ENFILE.c \
	src/POSIX.1-1988/errno/ENODEV.c \
	src/POSIX.1-1988/errno/ENOENT.c \
	src/POSIX.1-1988/errno/ENOEXEC.c \
	src/POSIX.1-1988/errno/ENOLCK.c \
	src/POSIX.1-1988/errno/ENOMEM.c \
	src/POSIX.1-1988/errno/ENOSPC.c \
	src/POSIX.1-1988/errno/ENOSYS.c \
	src/POSIX.1-1988/errno/ENOTDIR.c \
	src/POSIX.1-1988/errno/ENOTEMPTY.c \
	src/POSIX.1-1988/errno/ENOTTY.c \
	src/POSIX.1-1988/errno/ENXIO.c \
	src/POSIX.1-1988/errno/EPERM.c \
	src/POSIX.1-1988/errno/EPIPE.c \
	src/POSIX.1-1988/errno/EROFS.c \
	src/POSIX.1-1988/errno/ESPIPE.c \
	src/POSIX.1-1988/errno/ESRCH.c \
	src/POSIX.1-1988/errno/EXDEV.c \
	src/9899-1990-AMD1/errno/EILSEQ.c

$(INCDIR)/errno.h: $(errno_h_SOURCES)
	sh mkh.sh $@ $(errno_h_SOURCES)

fcntl_h_SOURCES =  \
	src/POSIX.1-1988/fcntl/FD_CLOEXEC.c \
	src/POSIX.1-1988/fcntl/F_DUPFD.c \
	src/POSIX.1-1988/fcntl/F_GETFD.c \
	src/POSIX.1-1988/fcntl/F_GETFL.c \
	src/POSIX.1-1988/fcntl/F_GETLK.c \
	src/POSIX.1-1988/fcntl/F_RDLCK.c \
	src/POSIX.1-1988/fcntl/F_SETFD.c \
	src/POSIX.1-1988/fcntl/F_SETFL.c \
	src/POSIX.1-1988/fcntl/F_SETLK.c \
	src/POSIX.1-1988/fcntl/F_SETLKW.c \
	src/POSIX.1-1988/fcntl/F_UNLCK.c \
	src/POSIX.1-1988/fcntl/F_WRLCK.c \
	src/POSIX.1-1988/fcntl/O_ACCMODE.c \
	src/POSIX.1-1988/fcntl/O_APPEND.c \
	src/POSIX.1-1988/fcntl/O_CREAT.c \
	src/POSIX.1-1988/fcntl/O_EXCL.c \
	src/POSIX.1-1988/fcntl/O_NOCTTY.c \
	src/POSIX.1-1988/fcntl/O_NONBLOCK.c \
	src/POSIX.1-1988/fcntl/O_RDONLY.c \
	src/POSIX.1-1988/fcntl/O_RDWR.c \
	src/POSIX.1-1988/fcntl/O_TRUNC.c \
	src/POSIX.1-1988/fcntl/O_WRONLY.c \
	src/POSIX.1-1988/fcntl/creat.c \
	src/POSIX.1-1988/fcntl/fcntl.c \
	src/POSIX.1-1988/fcntl/open.c \
	src/POSIX.1-1988/fcntl/struct_flock.c

$(INCDIR)/fcntl.h: $(fcntl_h_SOURCES)
	sh mkh.sh $@ $(fcntl_h_SOURCES)

float_h_SOURCES =  \
	src/9899-1990/float/DBL_DIG.c \
	src/9899-1990/float/DBL_EPSILON.c \
	src/9899-1990/float/DBL_MANT_DIG.c \
	src/9899-1990/float/DBL_MAX.c \
	src/9899-1990/float/DBL_MAX_10_EXP.c \
	src/9899-1990/float/DBL_MAX_EXP.c \
	src/9899-1990/float/DBL_MIN.c \
	src/9899-1990/float/DBL_MIN_10_EXP.c \
	src/9899-1990/float/DBL_MIN_EXP.c \
	src/9899-1990/float/FLT_DIG.c \
	src/9899-1990/float/FLT_EPSILON.c \
	src/9899-1990/float/FLT_MANT_DIG.c \
	src/9899-1990/float/FLT_MAX.c \
	src/9899-1990/float/FLT_MAX_10_EXP.c \
	src/9899-1990/float/FLT_MAX_EXP.c \
	src/9899-1990/float/FLT_MIN.c \
	src/9899-1990/float/FLT_MIN_10_EXP.c \
	src/9899-1990/float/FLT_MIN_EXP.c \
	src/9899-1990/float/FLT_RADIX.c \
	src/9899-1990/float/FLT_ROUNDS.c \
	src/9899-1990/float/LDBL_DIG.c \
	src/9899-1990/float/LDBL_EPSILON.c \
	src/9899-1990/float/LDBL_MANT_DIG.c \
	src/9899-1990/float/LDBL_MAX.c \
	src/9899-1990/float/LDBL_MAX_10_EXP.c \
	src/9899-1990/float/LDBL_MAX_EXP.c \
	src/9899-1990/float/LDBL_MIN.c \
	src/9899-1990/float/LDBL_MIN_10_EXP.c \
	src/9899-1990/float/LDBL_MIN_EXP.c

$(INCDIR)/float.h: $(float_h_SOURCES)
	sh mkh.sh $@ $(float_h_SOURCES)

grp_h_SOURCES =  \
	src/POSIX.1-1988/grp/getgrgid.c \
	src/POSIX.1-1988/grp/getgrnam.c \
	src/POSIX.1-1988/grp/struct_group.c

$(INCDIR)/grp.h: $(grp_h_SOURCES)
	sh mkh.sh $@ $(grp_h_SOURCES)

iso646_h_SOURCES =  \
	src/9899-1990-AMD1/iso646/and.c \
	src/9899-1990-AMD1/iso646/and_eq.c \
	src/9899-1990-AMD1/iso646/bitand.c \
	src/9899-1990-AMD1/iso646/bitor.c \
	src/9899-1990-AMD1/iso646/compl.c \
	src/9899-1990-AMD1/iso646/not.c \
	src/9899-1990-AMD1/iso646/not_eq.c \
	src/9899-1990-AMD1/iso646/or.c \
	src/9899-1990-AMD1/iso646/or_eq.c \
	src/9899-1990-AMD1/iso646/xor.c \
	src/9899-1990-AMD1/iso646/xor_eq.c

$(INCDIR)/iso646.h: $(iso646_h_SOURCES)
	sh mkh.sh $@ $(iso646_h_SOURCES)

limits_h_SOURCES =  \
	src/9899-1990/limits/CHAR_BIT.c \
	src/9899-1990/limits/CHAR_MAX.c \
	src/9899-1990/limits/CHAR_MIN.c \
	src/9899-1990/limits/INT_MAX.c \
	src/9899-1990/limits/INT_MIN.c \
	src/9899-1990/limits/LONG_MAX.c \
	src/9899-1990/limits/LONG_MIN.c \
	src/9899-1990/limits/MB_LEN_MAX.c \
	src/9899-1990/limits/SCHAR_MAX.c \
	src/9899-1990/limits/SCHAR_MIN.c \
	src/9899-1990/limits/SHRT_MAX.c \
	src/9899-1990/limits/SHRT_MIN.c \
	src/9899-1990/limits/UCHAR_MAX.c \
	src/9899-1990/limits/UINT_MAX.c \
	src/9899-1990/limits/ULONG_MAX.c \
	src/9899-1990/limits/USHRT_MAX.c \
	src/POSIX.1-1988/limits/ARG_MAX.c \
	src/POSIX.1-1988/limits/CHILD_MAX.c \
	src/POSIX.1-1988/limits/LINK_MAX.c \
	src/POSIX.1-1988/limits/MAX_CANON.c \
	src/POSIX.1-1988/limits/MAX_INPUT.c \
	src/POSIX.1-1988/limits/NAME_MAX.c \
	src/POSIX.1-1988/limits/NGROUPS_MAX.c \
	src/POSIX.1-1988/limits/OPEN_MAX.c \
	src/POSIX.1-1988/limits/PATH_MAX.c \
	src/POSIX.1-1988/limits/PIPE_BUF.c \
	src/POSIX.1-1988/limits/_POSIX_ARG_MAX.c \
	src/POSIX.1-1988/limits/_POSIX_CHILD_MAX.c \
	src/POSIX.1-1988/limits/_POSIX_LINK_MAX.c \
	src/POSIX.1-1988/limits/_POSIX_MAX_CANON.c \
	src/POSIX.1-1988/limits/_POSIX_MAX_INPUT.c \
	src/POSIX.1-1988/limits/_POSIX_NAME_MAX.c \
	src/POSIX.1-1988/limits/_POSIX_NGROUPS_MAX.c \
	src/POSIX.1-1988/limits/_POSIX_OPEN_MAX.c \
	src/POSIX.1-1988/limits/_POSIX_PATH_MAX.c \
	src/POSIX.1-1988/limits/_POSIX_PIPE_BUF.c \
	src/POSIX.1-1990/limits/SSIZE_MAX.c \
	src/POSIX.1-1990/limits/STREAM_MAX.c \
	src/POSIX.1-1990/limits/TZNAME_MAX.c \
	src/POSIX.1-1990/limits/_POSIX_SSIZE_MAX.c \
	src/POSIX.1-1990/limits/_POSIX_STREAM_MAX.c \
	src/POSIX.1-1990/limits/_POSIX_TZNAME_MAX.c

$(INCDIR)/limits.h: $(limits_h_SOURCES)
	sh mkh.sh $@ $(limits_h_SOURCES)

locale_h_SOURCES =  \
	src/9899-1990/locale/LC_ALL.c \
	src/9899-1990/locale/LC_COLLATE.c \
	src/9899-1990/locale/LC_CTYPE.c \
	src/9899-1990/locale/LC_MONETARY.c \
	src/9899-1990/locale/LC_NUMERIC.c \
	src/9899-1990/locale/LC_TIME.c \
	src/9899-1990/locale/localeconv.c \
	src/9899-1990/locale/setlocale.c \
	src/9899-1990/locale/struct_lconv.c \
	src/9899-1990/locale/NULL.ref \
	src/9899-1990/stddef/NULL.c

$(INCDIR)/locale.h: $(locale_h_SOURCES)
	sh mkh.sh $@ $(locale_h_SOURCES)

math_h_SOURCES =  \
	src/9899-1990/math/HUGE_VAL.c \
	src/9899-1990/math/acos.c \
	src/9899-1990/math/asin.c \
	src/9899-1990/math/atan.c \
	src/9899-1990/math/atan2.c \
	src/9899-1990/math/ceil.c \
	src/9899-1990/math/cos.c \
	src/9899-1990/math/cosh.c \
	src/9899-1990/math/exp.c \
	src/9899-1990/math/fabs.c \
	src/9899-1990/math/floor.c \
	src/9899-1990/math/fmod.c \
	src/9899-1990/math/frexp.c \
	src/9899-1990/math/ldexp.c \
	src/9899-1990/math/log.c \
	src/9899-1990/math/log10.c \
	src/9899-1990/math/modf.c \
	src/9899-1990/math/pow.c \
	src/9899-1990/math/sin.c \
	src/9899-1990/math/sinh.c \
	src/9899-1990/math/sqrt.c \
	src/9899-1990/math/tan.c \
	src/9899-1990/math/tanh.c

$(INCDIR)/math.h: $(math_h_SOURCES)
	sh mkh.sh $@ $(math_h_SOURCES)

pwd_h_SOURCES =  \
	src/POSIX.1-1988/pwd/getpwnam.c \
	src/POSIX.1-1988/pwd/getpwuid.c \
	src/POSIX.1-1988/pwd/struct_passwd.c

$(INCDIR)/pwd.h: $(pwd_h_SOURCES)
	sh mkh.sh $@ $(pwd_h_SOURCES)

setjmp_h_SOURCES =  \
	src/9899-1990/setjmp/jmp_buf.c \
	src/9899-1990/setjmp/longjmp.c \
	src/9899-1990/setjmp/setjmp.c \
	src/POSIX.1-1988/setjmp/sigjmp_buf.c \
	src/POSIX.1-1988/setjmp/siglongjmp.c \
	src/POSIX.1-1988/setjmp/sigsetjmp.c

$(INCDIR)/setjmp.h: $(setjmp_h_SOURCES)
	sh mkh.sh $@ $(setjmp_h_SOURCES)

signal_h_SOURCES =  \
	src/9899-1990/signal/SIGABRT.c \
	src/9899-1990/signal/SIGFPE.c \
	src/9899-1990/signal/SIGILL.c \
	src/9899-1990/signal/SIGINT.c \
	src/9899-1990/signal/SIGSEGV.c \
	src/9899-1990/signal/SIGTERM.c \
	src/9899-1990/signal/SIG_DFL.c \
	src/9899-1990/signal/SIG_ERR.c \
	src/9899-1990/signal/SIG_IGN.c \
	src/9899-1990/signal/raise.c \
	src/9899-1990/signal/sig_atomic_t.c \
	src/9899-1990/signal/signal.c \
	src/POSIX.1-1988/signal/SA_NOCLDSTOP.c \
	src/POSIX.1-1988/signal/SIGALRM.c \
	src/POSIX.1-1988/signal/SIGCHLD.c \
	src/POSIX.1-1988/signal/SIGCONT.c \
	src/POSIX.1-1988/signal/SIGHUP.c \
	src/POSIX.1-1988/signal/SIGKILL.c \
	src/POSIX.1-1988/signal/SIGPIPE.c \
	src/POSIX.1-1988/signal/SIGQUIT.c \
	src/POSIX.1-1988/signal/SIGSTOP.c \
	src/POSIX.1-1988/signal/SIGTSTP.c \
	src/POSIX.1-1988/signal/SIGTTIN.c \
	src/POSIX.1-1988/signal/SIGTTOU.c \
	src/POSIX.1-1988/signal/SIGUSR1.c \
	src/POSIX.1-1988/signal/SIGUSR2.c \
	src/POSIX.1-1988/signal/SIG_BLOCK.c \
	src/POSIX.1-1988/signal/SIG_SETMASK.c \
	src/POSIX.1-1988/signal/SIG_UNBLOCK.c \
	src/POSIX.1-1988/signal/kill.c \
	src/POSIX.1-1988/signal/sigaction.c \
	src/POSIX.1-1988/signal/sigaddset.c \
	src/POSIX.1-1988/signal/sigdelset.c \
	src/POSIX.1-1988/signal/sigemptyset.c \
	src/POSIX.1-1988/signal/sigfillset.c \
	src/POSIX.1-1988/signal/sigismember.c \
	src/POSIX.1-1988/signal/sigpending.c \
	src/POSIX.1-1988/signal/sigprocmask.c \
	src/POSIX.1-1988/signal/sigset_t.c \
	src/POSIX.1-1988/signal/sigsuspend.c \
	src/POSIX.1-1988/signal/struct_sigaction.c

$(INCDIR)/signal.h: $(signal_h_SOURCES)
	sh mkh.sh $@ $(signal_h_SOURCES)

stdarg_h_SOURCES =  \
	src/9899-1990/stdarg/va_arg.c \
	src/9899-1990/stdarg/va_end.c \
	src/9899-1990/stdarg/va_list.c \
	src/9899-1990/stdarg/va_start.c \
	src/9899-1990-AMD1/wchar/vswprintf.c

$(INCDIR)/stdarg.h: $(stdarg_h_SOURCES)
	sh mkh.sh $@ $(stdarg_h_SOURCES)

stddef_h_SOURCES =  \
	src/9899-1990/stddef/NULL.c \
	src/9899-1990/stddef/offsetof.c \
	src/9899-1990/stddef/ptrdiff_t.c \
	src/9899-1990/stddef/size_t.c \
	src/9899-1990/stddef/wchar_t.c

$(INCDIR)/stddef.h: $(stddef_h_SOURCES)
	sh mkh.sh $@ $(stddef_h_SOURCES)

stdio_h_SOURCES =  \
	src/9899-1990/stdio/BUFSIZ.c \
	src/9899-1990/stdio/EOF.c \
	src/9899-1990/stdio/FILE.c \
	src/9899-1990/stdio/FILENAME_MAX.c \
	src/9899-1990/stdio/FOPEN_MAX.c \
	src/9899-1990/stdio/L_tmpnam.c \
	src/9899-1990/stdio/SEEK_CUR.c \
	src/9899-1990/stdio/SEEK_END.c \
	src/9899-1990/stdio/SEEK_SET.c \
	src/9899-1990/stdio/TMP_MAX.c \
	src/9899-1990/stdio/_IOFBF.c \
	src/9899-1990/stdio/_IOLBF.c \
	src/9899-1990/stdio/_IONBF.c \
	src/9899-1990/stdio/clearerr.c \
	src/9899-1990/stdio/fclose.c \
	src/9899-1990/stdio/feof.c \
	src/9899-1990/stdio/ferror.c \
	src/9899-1990/stdio/fflush.c \
	src/9899-1990/stdio/fgetc.c \
	src/9899-1990/stdio/fgetpos.c \
	src/9899-1990/stdio/fgets.c \
	src/9899-1990/stdio/fopen.c \
	src/9899-1990/stdio/fpos_t.c \
	src/9899-1990/stdio/fprintf.c \
	src/9899-1990/stdio/fputc.c \
	src/9899-1990/stdio/fputs.c \
	src/9899-1990/stdio/fread.c \
	src/9899-1990/stdio/freopen.c \
	src/9899-1990/stdio/fscanf.c \
	src/9899-1990/stdio/fseek.c \
	src/9899-1990/stdio/fsetpos.c \
	src/9899-1990/stdio/ftell.c \
	src/9899-1990/stdio/fwrite.c \
	src/9899-1990/stdio/getc.c \
	src/9899-1990/stdio/getchar.c \
	src/9899-1990/stdio/gets.c \
	src/9899-1990/stdio/perror.c \
	src/9899-1990/stdio/printf.c \
	src/9899-1990/stdio/putc.c \
	src/9899-1990/stdio/putchar.c \
	src/9899-1990/stdio/puts.c \
	src/9899-1990/stdio/remove.c \
	src/9899-1990/stdio/rename.c \
	src/9899-1990/stdio/rewind.c \
	src/9899-1990/stdio/scanf.c \
	src/9899-1990/stdio/setbuf.c \
	src/9899-1990/stdio/setvbuf.c \
	src/9899-1990/stdio/sprintf.c \
	src/9899-1990/stdio/sscanf.c \
	src/9899-1990/stdio/stderr.c \
	src/9899-1990/stdio/stdin.c \
	src/9899-1990/stdio/stdout.c \
	src/9899-1990/stdio/tmpfile.c \
	src/9899-1990/stdio/tmpnam.c \
	src/9899-1990/stdio/ungetc.c \
	src/9899-1990/stdio/vfprintf.c \
	src/9899-1990/stdio/vprintf.c \
	src/9899-1990/stdio/vsprintf.c \
	src/9899-1990/stdio/NULL.ref \
	src/9899-1990/stddef/NULL.c \
	src/9899-1990/stdio/size_t.ref \
	src/9899-1990/stddef/size_t.c \
	src/9899-1990/stdio/va_list.ref \
	src/9899-1990/stdarg/va_list.c \
	src/POSIX.1-1988/stdio/L_ctermid.c \
	src/POSIX.1-1988/stdio/L_cuserid.c \
	src/POSIX.1-1988/stdio/fdopen.c \
	src/POSIX.1-1988/stdio/fileno.c

$(INCDIR)/stdio.h: $(stdio_h_SOURCES)
	sh mkh.sh $@ $(stdio_h_SOURCES)

stdlib_h_SOURCES =  \
	src/9899-1990/stdlib/EXIT_FAILURE.c \
	src/9899-1990/stdlib/EXIT_SUCCESS.c \
	src/9899-1990/stdlib/MB_CUR_MAX.c \
	src/9899-1990/stdlib/RAND_MAX.c \
	src/9899-1990/stdlib/abort.c \
	src/9899-1990/stdlib/abs.c \
	src/9899-1990/stdlib/atexit.c \
	src/9899-1990/stdlib/atof.c \
	src/9899-1990/stdlib/atoi.c \
	src/9899-1990/stdlib/atol.c \
	src/9899-1990/stdlib/bsearch.c \
	src/9899-1990/stdlib/calloc.c \
	src/9899-1990/stdlib/div.c \
	src/9899-1990/stdlib/div_t.c \
	src/9899-1990/stdlib/exit.c \
	src/9899-1990/stdlib/free.c \
	src/9899-1990/stdlib/getenv.c \
	src/9899-1990/stdlib/labs.c \
	src/9899-1990/stdlib/ldiv.c \
	src/9899-1990/stdlib/ldiv_t.c \
	src/9899-1990/stdlib/malloc.c \
	src/9899-1990/stdlib/mblen.c \
	src/9899-1990/stdlib/mbstowcs.c \
	src/9899-1990/stdlib/mbtowc.c \
	src/9899-1990/stdlib/qsort.c \
	src/9899-1990/stdlib/rand.c \
	src/9899-1990/stdlib/realloc.c \
	src/9899-1990/stdlib/srand.c \
	src/9899-1990/stdlib/strtod.c \
	src/9899-1990/stdlib/strtol.c \
	src/9899-1990/stdlib/strtoul.c \
	src/9899-1990/stdlib/system.c \
	src/9899-1990/stdlib/wcstombs.c \
	src/9899-1990/stdlib/wctomb.c \
	src/9899-1990/stdlib/NULL.ref \
	src/9899-1990/stddef/NULL.c \
	src/9899-1990/stdlib/size_t.ref \
	src/9899-1990/stddef/size_t.c \
	src/9899-1990/stdlib/wchar_t.ref \
	src/9899-1990/stddef/wchar_t.c

$(INCDIR)/stdlib.h: $(stdlib_h_SOURCES)
	sh mkh.sh $@ $(stdlib_h_SOURCES)

string_h_SOURCES =  \
	src/9899-1990/string/memchr.c \
	src/9899-1990/string/memcmp.c \
	src/9899-1990/string/memcpy.c \
	src/9899-1990/string/memmove.c \
	src/9899-1990/string/memset.c \
	src/9899-1990/string/strcat.c \
	src/9899-1990/string/strchr.c \
	src/9899-1990/string/strcmp.c \
	src/9899-1990/string/strcoll.c \
	src/9899-1990/string/strcpy.c \
	src/9899-1990/string/strcspn.c \
	src/9899-1990/string/strerror.c \
	src/9899-1990/string/strlen.c \
	src/9899-1990/string/strncat.c \
	src/9899-1990/string/strncmp.c \
	src/9899-1990/string/strncpy.c \
	src/9899-1990/string/strpbrk.c \
	src/9899-1990/string/strrchr.c \
	src/9899-1990/string/strspn.c \
	src/9899-1990/string/strstr.c \
	src/9899-1990/string/strtok.c \
	src/9899-1990/string/strxfrm.c \
	src/9899-1990/string/NULL.ref \
	src/9899-1990/stddef/NULL.c \
	src/9899-1990/string/size_t.ref \
	src/9899-1990/stddef/size_t.c

$(INCDIR)/string.h: $(string_h_SOURCES)
	sh mkh.sh $@ $(string_h_SOURCES)

sys_stat_h_SOURCES =  \
	src/POSIX.1-1988/sys/stat/S_IRGRP.c \
	src/POSIX.1-1988/sys/stat/S_IROTH.c \
	src/POSIX.1-1988/sys/stat/S_IRUSR.c \
	src/POSIX.1-1988/sys/stat/S_IRWXG.c \
	src/POSIX.1-1988/sys/stat/S_IRWXO.c \
	src/POSIX.1-1988/sys/stat/S_IRWXU.c \
	src/POSIX.1-1988/sys/stat/S_ISCHR.c \
	src/POSIX.1-1988/sys/stat/S_ISDIR.c \
	src/POSIX.1-1988/sys/stat/S_ISFIFO.c \
	src/POSIX.1-1988/sys/stat/S_ISGID.c \
	src/POSIX.1-1988/sys/stat/S_ISREG.c \
	src/POSIX.1-1988/sys/stat/S_ISUID.c \
	src/POSIX.1-1988/sys/stat/S_IWGRP.c \
	src/POSIX.1-1988/sys/stat/S_IWOTH.c \
	src/POSIX.1-1988/sys/stat/S_IWUSR.c \
	src/POSIX.1-1988/sys/stat/S_IXGRP.c \
	src/POSIX.1-1988/sys/stat/S_IXOTH.c \
	src/POSIX.1-1988/sys/stat/S_IXUSR.c \
	src/POSIX.1-1988/sys/stat/chmod.c \
	src/POSIX.1-1988/sys/stat/fstat.c \
	src/POSIX.1-1988/sys/stat/mkdir.c \
	src/POSIX.1-1988/sys/stat/mkfifo.c \
	src/POSIX.1-1988/sys/stat/stat.c \
	src/POSIX.1-1988/sys/stat/struct_stat.c \
	src/POSIX.1-1988/sys/stat/umask.c

$(INCDIR)/sys/stat.h: $(sys_stat_h_SOURCES)
	sh mkh.sh $@ $(sys_stat_h_SOURCES)

sys_times_h_SOURCES =  \
	src/POSIX.1-1988/sys/times/struct_tms.c \
	src/POSIX.1-1988/sys/times/times.c

$(INCDIR)/sys/times.h: $(sys_times_h_SOURCES)
	sh mkh.sh $@ $(sys_times_h_SOURCES)

sys_types_h_SOURCES =  \
	src/POSIX.1-1988/sys/types/dev_t.c \
	src/POSIX.1-1988/sys/types/gid_t.c \
	src/POSIX.1-1988/sys/types/ino_t.c \
	src/POSIX.1-1988/sys/types/mode_t.c \
	src/POSIX.1-1988/sys/types/nlink_t.c \
	src/POSIX.1-1988/sys/types/off_t.c \
	src/POSIX.1-1988/sys/types/pid_t.c \
	src/POSIX.1-1988/sys/types/uid_t.c \
	src/POSIX.1-1990/sys/types/ssize_t.c

$(INCDIR)/sys/types.h: $(sys_types_h_SOURCES)
	sh mkh.sh $@ $(sys_types_h_SOURCES)

sys_utsname_h_SOURCES =  \
	src/POSIX.1-1988/sys/utsname/struct_utsname.c \
	src/POSIX.1-1988/sys/utsname/uname.c

$(INCDIR)/sys/utsname.h: $(sys_utsname_h_SOURCES)
	sh mkh.sh $@ $(sys_utsname_h_SOURCES)

sys_wait_h_SOURCES =  \
	src/POSIX.1-1988/sys/wait/WEXITSTATUS.c \
	src/POSIX.1-1988/sys/wait/WIFEXITED.c \
	src/POSIX.1-1988/sys/wait/WIFSIGNALED.c \
	src/POSIX.1-1988/sys/wait/WIFSTOPPED.c \
	src/POSIX.1-1988/sys/wait/WNOHANG.c \
	src/POSIX.1-1988/sys/wait/WSTOPSIG.c \
	src/POSIX.1-1988/sys/wait/WTERMSIG.c \
	src/POSIX.1-1988/sys/wait/WUNTRACED.c \
	src/POSIX.1-1988/sys/wait/wait.c \
	src/POSIX.1-1988/sys/wait/waitpid.c

$(INCDIR)/sys/wait.h: $(sys_wait_h_SOURCES)
	sh mkh.sh $@ $(sys_wait_h_SOURCES)

tar_h_SOURCES =  \
	src/POSIX.1-1988/tar/AREGTYPE.c \
	src/POSIX.1-1988/tar/BLKTYPE.c \
	src/POSIX.1-1988/tar/CHRTYPE.c \
	src/POSIX.1-1988/tar/CONTTYPE.c \
	src/POSIX.1-1988/tar/DIRTYPE.c \
	src/POSIX.1-1988/tar/FIFOTYPE.c \
	src/POSIX.1-1988/tar/LNKTYPE.c \
	src/POSIX.1-1988/tar/REGTYPE.c \
	src/POSIX.1-1988/tar/SYMTYPE.c \
	src/POSIX.1-1988/tar/TGEXEC.c \
	src/POSIX.1-1988/tar/TGREAD.c \
	src/POSIX.1-1988/tar/TGWRITE.c \
	src/POSIX.1-1988/tar/TMAGIC.c \
	src/POSIX.1-1988/tar/TMAGLEN.c \
	src/POSIX.1-1988/tar/TOEXEC.c \
	src/POSIX.1-1988/tar/TOREAD.c \
	src/POSIX.1-1988/tar/TOWRITE.c \
	src/POSIX.1-1988/tar/TSGID.c \
	src/POSIX.1-1988/tar/TSUID.c \
	src/POSIX.1-1988/tar/TSVTX.c \
	src/POSIX.1-1988/tar/TUEXEC.c \
	src/POSIX.1-1988/tar/TUREAD.c \
	src/POSIX.1-1988/tar/TUWRITE.c \
	src/POSIX.1-1988/tar/TVERSION.c \
	src/POSIX.1-1988/tar/TVERSLEN.c

$(INCDIR)/tar.h: $(tar_h_SOURCES)
	sh mkh.sh $@ $(tar_h_SOURCES)

termios_h_SOURCES =  \
	src/POSIX.1-1988/termios/B0.c \
	src/POSIX.1-1988/termios/B110.c \
	src/POSIX.1-1988/termios/B1200.c \
	src/POSIX.1-1988/termios/B134.c \
	src/POSIX.1-1988/termios/B150.c \
	src/POSIX.1-1988/termios/B1800.c \
	src/POSIX.1-1988/termios/B19200.c \
	src/POSIX.1-1988/termios/B200.c \
	src/POSIX.1-1988/termios/B2400.c \
	src/POSIX.1-1988/termios/B300.c \
	src/POSIX.1-1988/termios/B38400.c \
	src/POSIX.1-1988/termios/B4800.c \
	src/POSIX.1-1988/termios/B50.c \
	src/POSIX.1-1988/termios/B600.c \
	src/POSIX.1-1988/termios/B75.c \
	src/POSIX.1-1988/termios/B9600.c \
	src/POSIX.1-1988/termios/BRKINT.c \
	src/POSIX.1-1988/termios/CLOCAL.c \
	src/POSIX.1-1988/termios/CREAD.c \
	src/POSIX.1-1988/termios/CS5.c \
	src/POSIX.1-1988/termios/CS6.c \
	src/POSIX.1-1988/termios/CS7.c \
	src/POSIX.1-1988/termios/CS8.c \
	src/POSIX.1-1988/termios/CSIZE.c \
	src/POSIX.1-1988/termios/CSTOPB.c \
	src/POSIX.1-1988/termios/ECHO.c \
	src/POSIX.1-1988/termios/ECHOE.c \
	src/POSIX.1-1988/termios/ECHOK.c \
	src/POSIX.1-1988/termios/ECHONL.c \
	src/POSIX.1-1988/termios/HUPCL.c \
	src/POSIX.1-1988/termios/ICANON.c \
	src/POSIX.1-1988/termios/ICRNL.c \
	src/POSIX.1-1988/termios/IEXTEN.c \
	src/POSIX.1-1988/termios/IGNBRK.c \
	src/POSIX.1-1988/termios/IGNCR.c \
	src/POSIX.1-1988/termios/IGNPAR.c \
	src/POSIX.1-1988/termios/INLCR.c \
	src/POSIX.1-1988/termios/INPCK.c \
	src/POSIX.1-1988/termios/ISIG.c \
	src/POSIX.1-1988/termios/ISTRIP.c \
	src/POSIX.1-1988/termios/IXOFF.c \
	src/POSIX.1-1988/termios/IXON.c \
	src/POSIX.1-1988/termios/NCCS.c \
	src/POSIX.1-1988/termios/NOFLSH.c \
	src/POSIX.1-1988/termios/OPOST.c \
	src/POSIX.1-1988/termios/PARENB.c \
	src/POSIX.1-1988/termios/PARMRK.c \
	src/POSIX.1-1988/termios/PARODD.c \
	src/POSIX.1-1988/termios/TCIFLUSH.c \
	src/POSIX.1-1988/termios/TCIOFF.c \
	src/POSIX.1-1988/termios/TCIOFLUSH.c \
	src/POSIX.1-1988/termios/TCION.c \
	src/POSIX.1-1988/termios/TCOFLUSH.c \
	src/POSIX.1-1988/termios/TCOOFF.c \
	src/POSIX.1-1988/termios/TCOON.c \
	src/POSIX.1-1988/termios/TCSADRAIN.c \
	src/POSIX.1-1988/termios/TCSAFLUSH.c \
	src/POSIX.1-1988/termios/TCSANOW.c \
	src/POSIX.1-1988/termios/TOSTOP.c \
	src/POSIX.1-1988/termios/VEOF.c \
	src/POSIX.1-1988/termios/VEOL.c \
	src/POSIX.1-1988/termios/VERASE.c \
	src/POSIX.1-1988/termios/VINTR.c \
	src/POSIX.1-1988/termios/VKILL.c \
	src/POSIX.1-1988/termios/VMIN.c \
	src/POSIX.1-1988/termios/VQUIT.c \
	src/POSIX.1-1988/termios/VSTART.c \
	src/POSIX.1-1988/termios/VSTOP.c \
	src/POSIX.1-1988/termios/VSUSP.c \
	src/POSIX.1-1988/termios/VTIME.c \
	src/POSIX.1-1988/termios/cc_t.c \
	src/POSIX.1-1988/termios/cfgetispeed.c \
	src/POSIX.1-1988/termios/cfgetospeed.c \
	src/POSIX.1-1988/termios/cfsetispeed.c \
	src/POSIX.1-1988/termios/cfsetospeed.c \
	src/POSIX.1-1988/termios/speed_t.c \
	src/POSIX.1-1988/termios/struct_termios.c \
	src/POSIX.1-1988/termios/tcdrain.c \
	src/POSIX.1-1988/termios/tcflag_t.c \
	src/POSIX.1-1988/termios/tcflow.c \
	src/POSIX.1-1988/termios/tcflush.c \
	src/POSIX.1-1988/termios/tcgetattr.c \
	src/POSIX.1-1988/termios/tcsendbreak.c \
	src/POSIX.1-1988/termios/tcsetattr.c

$(INCDIR)/termios.h: $(termios_h_SOURCES)
	sh mkh.sh $@ $(termios_h_SOURCES)

time_h_SOURCES =  \
	src/9899-1990/time/CLOCKS_PER_SEC.c \
	src/9899-1990/time/asctime.c \
	src/9899-1990/time/clock.c \
	src/9899-1990/time/clock_t.c \
	src/9899-1990/time/ctime.c \
	src/9899-1990/time/difftime.c \
	src/9899-1990/time/gmtime.c \
	src/9899-1990/time/localtime.c \
	src/9899-1990/time/mktime.c \
	src/9899-1990/time/strftime.c \
	src/9899-1990/time/struct_tm.c \
	src/9899-1990/time/time.c \
	src/9899-1990/time/time_t.c \
	src/9899-1990/time/NULL.ref \
	src/9899-1990/stddef/NULL.c \
	src/9899-1990/time/size_t.ref \
	src/9899-1990/stddef/size_t.c \
	src/POSIX.1-1988/time/CLK_TCK.c \
	src/POSIX.1-1988/time/tzname.c \
	src/POSIX.1-1988/time/tzset.c

$(INCDIR)/time.h: $(time_h_SOURCES)
	sh mkh.sh $@ $(time_h_SOURCES)

unistd_h_SOURCES =  \
	src/POSIX.1-1988/unistd/F_OK.c \
	src/POSIX.1-1988/unistd/R_OK.c \
	src/POSIX.1-1988/unistd/STDERR_FILENO.c \
	src/POSIX.1-1988/unistd/STDIN_FILENO.c \
	src/POSIX.1-1988/unistd/STDOUT_FILENO.c \
	src/POSIX.1-1988/unistd/W_OK.c \
	src/POSIX.1-1988/unistd/X_OK.c \
	src/POSIX.1-1988/unistd/_PC_CHOWN_RESTRICTED.c \
	src/POSIX.1-1988/unistd/_PC_LINK_MAX.c \
	src/POSIX.1-1988/unistd/_PC_MAX_CANON.c \
	src/POSIX.1-1988/unistd/_PC_MAX_INPUT.c \
	src/POSIX.1-1988/unistd/_PC_NAME_MAX.c \
	src/POSIX.1-1988/unistd/_PC_NO_TRUNC.c \
	src/POSIX.1-1988/unistd/_PC_PATH_MAX.c \
	src/POSIX.1-1988/unistd/_PC_PIPE_BUF.c \
	src/POSIX.1-1988/unistd/_PC_VDISABLE.c \
	src/POSIX.1-1988/unistd/_POSIX_CHOWN_RESTRICTED.c \
	src/POSIX.1-1988/unistd/_POSIX_JOB_CONTROL.c \
	src/POSIX.1-1988/unistd/_POSIX_NO_TRUNC.c \
	src/POSIX.1-1988/unistd/_POSIX_SAVED_IDS.c \
	src/POSIX.1-1988/unistd/_POSIX_VDISABLE.c \
	src/POSIX.1-1988/unistd/_POSIX_VERSION.c \
	src/POSIX.1-1988/unistd/_SC_ARG_MAX.c \
	src/POSIX.1-1988/unistd/_SC_CHILD_MAX.c \
	src/POSIX.1-1988/unistd/_SC_CLK_TCK.c \
	src/POSIX.1-1988/unistd/_SC_JOB_CONTROL.c \
	src/POSIX.1-1988/unistd/_SC_NGROUPS_MAX.c \
	src/POSIX.1-1988/unistd/_SC_OPEN_MAX.c \
	src/POSIX.1-1988/unistd/_SC_SAVED_IDS.c \
	src/POSIX.1-1988/unistd/_SC_VERSION.c \
	src/POSIX.1-1988/unistd/_exit.c \
	src/POSIX.1-1988/unistd/access.c \
	src/POSIX.1-1988/unistd/alarm.c \
	src/POSIX.1-1988/unistd/chdir.c \
	src/POSIX.1-1988/unistd/chown.c \
	src/POSIX.1-1988/unistd/close.c \
	src/POSIX.1-1988/unistd/ctermid.c \
	src/POSIX.1-1988/unistd/cuserid.c \
	src/POSIX.1-1988/unistd/dup.c \
	src/POSIX.1-1988/unistd/dup2.c \
	src/POSIX.1-1988/unistd/execl.c \
	src/POSIX.1-1988/unistd/execle.c \
	src/POSIX.1-1988/unistd/execlp.c \
	src/POSIX.1-1988/unistd/execv.c \
	src/POSIX.1-1988/unistd/execve.c \
	src/POSIX.1-1988/unistd/execvp.c \
	src/POSIX.1-1988/unistd/fork.c \
	src/POSIX.1-1988/unistd/fpathconf.c \
	src/POSIX.1-1988/unistd/getcwd.c \
	src/POSIX.1-1988/unistd/getegid.c \
	src/POSIX.1-1988/unistd/geteuid.c \
	src/POSIX.1-1988/unistd/getgid.c \
	src/POSIX.1-1988/unistd/getgroups.c \
	src/POSIX.1-1988/unistd/getlogin.c \
	src/POSIX.1-1988/unistd/getpgrp.c \
	src/POSIX.1-1988/unistd/getpid.c \
	src/POSIX.1-1988/unistd/getppid.c \
	src/POSIX.1-1988/unistd/getuid.c \
	src/POSIX.1-1988/unistd/isatty.c \
	src/POSIX.1-1988/unistd/link.c \
	src/POSIX.1-1988/unistd/lseek.c \
	src/POSIX.1-1988/unistd/pathconf.c \
	src/POSIX.1-1988/unistd/pause.c \
	src/POSIX.1-1988/unistd/pipe.c \
	src/POSIX.1-1988/unistd/read.c \
	src/POSIX.1-1988/unistd/rmdir.c \
	src/POSIX.1-1988/unistd/setgid.c \
	src/POSIX.1-1988/unistd/setpgid.c \
	src/POSIX.1-1988/unistd/setsid.c \
	src/POSIX.1-1988/unistd/setuid.c \
	src/POSIX.1-1988/unistd/sleep.c \
	src/POSIX.1-1988/unistd/sysconf.c \
	src/POSIX.1-1988/unistd/tcgetpgrp.c \
	src/POSIX.1-1988/unistd/tcsetpgrp.c \
	src/POSIX.1-1988/unistd/ttyname.c \
	src/POSIX.1-1988/unistd/unlink.c \
	src/POSIX.1-1988/unistd/write.c \
	src/POSIX.1-1990/unistd/_SC_STREAM_MAX.c \
	src/POSIX.1-1990/unistd/_SC_TZNAME_MAX.c

$(INCDIR)/unistd.h: $(unistd_h_SOURCES)
	sh mkh.sh $@ $(unistd_h_SOURCES)

utime_h_SOURCES =  \
	src/POSIX.1-1988/utime/struct_utimbuf.c \
	src/POSIX.1-1988/utime/utime.c

$(INCDIR)/utime.h: $(utime_h_SOURCES)
	sh mkh.sh $@ $(utime_h_SOURCES)

wchar_h_SOURCES =  \
	src/9899-1990-AMD1/wchar/WCHAR_MAX.c \
	src/9899-1990-AMD1/wchar/WCHAR_MIN.c \
	src/9899-1990-AMD1/wchar/btowc.c \
	src/9899-1990-AMD1/wchar/fgetwc.c \
	src/9899-1990-AMD1/wchar/fgetws.c \
	src/9899-1990-AMD1/wchar/fputwc.c \
	src/9899-1990-AMD1/wchar/fputws.c \
	src/9899-1990-AMD1/wchar/fwide.c \
	src/9899-1990-AMD1/wchar/fwprintf.c \
	src/9899-1990-AMD1/wchar/fwscanf.c \
	src/9899-1990-AMD1/wchar/getwc.c \
	src/9899-1990-AMD1/wchar/getwchar.c \
	src/9899-1990-AMD1/wchar/mbrlen.c \
	src/9899-1990-AMD1/wchar/mbrtowc.c \
	src/9899-1990-AMD1/wchar/mbsinit.c \
	src/9899-1990-AMD1/wchar/mbsrtowcs.c \
	src/9899-1990-AMD1/wchar/mbstate_t.c \
	src/9899-1990-AMD1/wchar/putwc.c \
	src/9899-1990-AMD1/wchar/putwchar.c \
	src/9899-1990-AMD1/wchar/swprintf.c \
	src/9899-1990-AMD1/wchar/swscanf.c \
	src/9899-1990-AMD1/wchar/tm.c \
	src/9899-1990-AMD1/wchar/ungetwc.c \
	src/9899-1990-AMD1/wchar/vfwprintf.c \
	src/9899-1990-AMD1/wchar/vwprintf.c \
	src/9899-1990-AMD1/wchar/wcrtomb.c \
	src/9899-1990-AMD1/wchar/wcscat.c \
	src/9899-1990-AMD1/wchar/wcschr.c \
	src/9899-1990-AMD1/wchar/wcscmp.c \
	src/9899-1990-AMD1/wchar/wcscoll.c \
	src/9899-1990-AMD1/wchar/wcscpy.c \
	src/9899-1990-AMD1/wchar/wcscspn.c \
	src/9899-1990-AMD1/wchar/wcsftime.c \
	src/9899-1990-AMD1/wchar/wcslen.c \
	src/9899-1990-AMD1/wchar/wcsncat.c \
	src/9899-1990-AMD1/wchar/wcsncmp.c \
	src/9899-1990-AMD1/wchar/wcsncpy.c \
	src/9899-1990-AMD1/wchar/wcspbrk.c \
	src/9899-1990-AMD1/wchar/wcsrchr.c \
	src/9899-1990-AMD1/wchar/wcsrtombs.c \
	src/9899-1990-AMD1/wchar/wcsspn.c \
	src/9899-1990-AMD1/wchar/wcsstr.c \
	src/9899-1990-AMD1/wchar/wcstod.c \
	src/9899-1990-AMD1/wchar/wcstok.c \
	src/9899-1990-AMD1/wchar/wcstol.c \
	src/9899-1990-AMD1/wchar/wcstoul.c \
	src/9899-1990-AMD1/wchar/wcsxfrm.c \
	src/9899-1990-AMD1/wchar/wctob.c \
	src/9899-1990-AMD1/wchar/wmemchr.c \
	src/9899-1990-AMD1/wchar/wmemcmp.c \
	src/9899-1990-AMD1/wchar/wmemcpy.c \
	src/9899-1990-AMD1/wchar/wmemmove.c \
	src/9899-1990-AMD1/wchar/wmemset.c \
	src/9899-1990-AMD1/wchar/wprintf.c \
	src/9899-1990-AMD1/wchar/wscanf.c

$(INCDIR)/wchar.h: $(wchar_h_SOURCES)
	sh mkh.sh $@ $(wchar_h_SOURCES)

wctype_h_SOURCES =  \
	src/9899-1990-AMD1/wctype/WEOF.c \
	src/9899-1990-AMD1/wctype/iswalnum.c \
	src/9899-1990-AMD1/wctype/iswalpha.c \
	src/9899-1990-AMD1/wctype/iswcntrl.c \
	src/9899-1990-AMD1/wctype/iswctype.c \
	src/9899-1990-AMD1/wctype/iswdigit.c \
	src/9899-1990-AMD1/wctype/iswgraph.c \
	src/9899-1990-AMD1/wctype/iswlower.c \
	src/9899-1990-AMD1/wctype/iswprint.c \
	src/9899-1990-AMD1/wctype/iswpunct.c \
	src/9899-1990-AMD1/wctype/iswspace.c \
	src/9899-1990-AMD1/wctype/iswupper.c \
	src/9899-1990-AMD1/wctype/iswxdigit.c \
	src/9899-1990-AMD1/wctype/towctrans.c \
	src/9899-1990-AMD1/wctype/towlower.c \
	src/9899-1990-AMD1/wctype/towupper.c \
	src/9899-1990-AMD1/wctype/wctrans.c \
	src/9899-1990-AMD1/wctype/wctrans_t.c \
	src/9899-1990-AMD1/wctype/wctype.c \
	src/9899-1990-AMD1/wctype/wctype_t.c \
	src/9899-1990-AMD1/wctype/wint_t.c

$(INCDIR)/wctype.h: $(wctype_h_SOURCES)
	sh mkh.sh $@ $(wctype_h_SOURCES)

headers: $(INCDIR)/assert.h $(INCDIR)/cpio.h $(INCDIR)/ctype.h $(INCDIR)/dirent.h $(INCDIR)/errno.h $(INCDIR)/fcntl.h $(INCDIR)/float.h $(INCDIR)/grp.h $(INCDIR)/iso646.h $(INCDIR)/limits.h $(INCDIR)/locale.h $(INCDIR)/math.h $(INCDIR)/pwd.h $(INCDIR)/setjmp.h $(INCDIR)/signal.h $(INCDIR)/stdarg.h $(INCDIR)/stddef.h $(INCDIR)/stdio.h $(INCDIR)/stdlib.h $(INCDIR)/string.h $(INCDIR)/sys/stat.h $(INCDIR)/sys/times.h $(INCDIR)/sys/types.h $(INCDIR)/sys/utsname.h $(INCDIR)/sys/wait.h $(INCDIR)/tar.h $(INCDIR)/termios.h $(INCDIR)/time.h $(INCDIR)/unistd.h $(INCDIR)/utime.h $(INCDIR)/wchar.h $(INCDIR)/wctype.h