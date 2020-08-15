.POSIX:

all:

all: mk/fstatvfs.d
mk/fstatvfs.d: src/sys/statvfs/fstatvfs.c
	sh mk/deps.sh src/sys/statvfs/fstatvfs.c

all: mk/statvfs.d
mk/statvfs.d: src/sys/statvfs/statvfs.c
	sh mk/deps.sh src/sys/statvfs/statvfs.c

all: mk/times.d
mk/times.d: src/sys/times/times.c
	sh mk/deps.sh src/sys/times/times.c

all: mk/setrlimit.d
mk/setrlimit.d: src/sys/resource/setrlimit.c
	sh mk/deps.sh src/sys/resource/setrlimit.c

all: mk/setpriority.d
mk/setpriority.d: src/sys/resource/setpriority.c
	sh mk/deps.sh src/sys/resource/setpriority.c

all: mk/getpriority.d
mk/getpriority.d: src/sys/resource/getpriority.c
	sh mk/deps.sh src/sys/resource/getpriority.c

all: mk/getrusage.d
mk/getrusage.d: src/sys/resource/getrusage.c
	sh mk/deps.sh src/sys/resource/getrusage.c

all: mk/getrlimit.d
mk/getrlimit.d: src/sys/resource/getrlimit.c
	sh mk/deps.sh src/sys/resource/getrlimit.c

all: mk/nlink_t.d
mk/nlink_t.d: src/sys/types/nlink_t.c
	sh mk/deps.sh src/sys/types/nlink_t.c

all: mk/dev_t.d
mk/dev_t.d: src/sys/types/dev_t.c
	sh mk/deps.sh src/sys/types/dev_t.c

all: mk/gid_t.d
mk/gid_t.d: src/sys/types/gid_t.c
	sh mk/deps.sh src/sys/types/gid_t.c

all: mk/ino_t.d
mk/ino_t.d: src/sys/types/ino_t.c
	sh mk/deps.sh src/sys/types/ino_t.c

all: mk/uid_t.d
mk/uid_t.d: src/sys/types/uid_t.c
	sh mk/deps.sh src/sys/types/uid_t.c

all: mk/off_t.d
mk/off_t.d: src/sys/types/off_t.c
	sh mk/deps.sh src/sys/types/off_t.c

all: mk/shmctl.d
mk/shmctl.d: src/sys/shm/shmctl.c
	sh mk/deps.sh src/sys/shm/shmctl.c

all: mk/shmget.d
mk/shmget.d: src/sys/shm/shmget.c
	sh mk/deps.sh src/sys/shm/shmget.c

all: mk/shmat.d
mk/shmat.d: src/sys/shm/shmat.c
	sh mk/deps.sh src/sys/shm/shmat.c

all: mk/shmdt.d
mk/shmdt.d: src/sys/shm/shmdt.c
	sh mk/deps.sh src/sys/shm/shmdt.c

all: mk/struct_shmid_ds.d
mk/struct_shmid_ds.d: src/sys/shm/struct_shmid_ds.c
	sh mk/deps.sh src/sys/shm/struct_shmid_ds.c

all: mk/setitimer.d
mk/setitimer.d: src/sys/time/setitimer.c
	sh mk/deps.sh src/sys/time/setitimer.c

all: mk/gettimeofday.d
mk/gettimeofday.d: src/sys/time/gettimeofday.c
	sh mk/deps.sh src/sys/time/gettimeofday.c

all: mk/utimes.d
mk/utimes.d: src/sys/time/utimes.c
	sh mk/deps.sh src/sys/time/utimes.c

all: mk/getitimer.d
mk/getitimer.d: src/sys/time/getitimer.c
	sh mk/deps.sh src/sys/time/getitimer.c

all: mk/select.d
mk/select.d: src/sys/time/select.c
	sh mk/deps.sh src/sys/time/select.c

all: mk/ftok.d
mk/ftok.d: src/sys/ipc/ftok.c
	sh mk/deps.sh src/sys/ipc/ftok.c

all: mk/struct_ipc_perm.d
mk/struct_ipc_perm.d: src/sys/ipc/struct_ipc_perm.c
	sh mk/deps.sh src/sys/ipc/struct_ipc_perm.c

all: mk/uname.d
mk/uname.d: src/sys/utsname/uname.c
	sh mk/deps.sh src/sys/utsname/uname.c

all: mk/readv.d
mk/readv.d: src/sys/uio/readv.c
	sh mk/deps.sh src/sys/uio/readv.c

all: mk/writev.d
mk/writev.d: src/sys/uio/writev.c
	sh mk/deps.sh src/sys/uio/writev.c

all: mk/struct_sem_anonymous.d
mk/struct_sem_anonymous.d: src/sys/sem/struct_sem_anonymous.c
	sh mk/deps.sh src/sys/sem/struct_sem_anonymous.c

all: mk/semget.d
mk/semget.d: src/sys/sem/semget.c
	sh mk/deps.sh src/sys/sem/semget.c

all: mk/struct_semid_ds.d
mk/struct_semid_ds.d: src/sys/sem/struct_semid_ds.c
	sh mk/deps.sh src/sys/sem/struct_semid_ds.c

all: mk/semop.d
mk/semop.d: src/sys/sem/semop.c
	sh mk/deps.sh src/sys/sem/semop.c

all: mk/semctl.d
mk/semctl.d: src/sys/sem/semctl.c
	sh mk/deps.sh src/sys/sem/semctl.c

all: mk/waitid.d
mk/waitid.d: src/sys/wait/waitid.c
	sh mk/deps.sh src/sys/wait/waitid.c

all: mk/wait.d
mk/wait.d: src/sys/wait/wait.c
	sh mk/deps.sh src/sys/wait/wait.c

all: mk/wait3.d
mk/wait3.d: src/sys/wait/wait3.c
	sh mk/deps.sh src/sys/wait/wait3.c

all: mk/waitpid.d
mk/waitpid.d: src/sys/wait/waitpid.c
	sh mk/deps.sh src/sys/wait/waitpid.c

all: mk/mmap.d
mk/mmap.d: src/sys/mman/mmap.c
	sh mk/deps.sh src/sys/mman/mmap.c

all: mk/munlock.d
mk/munlock.d: src/sys/mman/munlock.c
	sh mk/deps.sh src/sys/mman/munlock.c

all: mk/munlockall.d
mk/munlockall.d: src/sys/mman/munlockall.c
	sh mk/deps.sh src/sys/mman/munlockall.c

all: mk/mprotect.d
mk/mprotect.d: src/sys/mman/mprotect.c
	sh mk/deps.sh src/sys/mman/mprotect.c

all: mk/mlock.d
mk/mlock.d: src/sys/mman/mlock.c
	sh mk/deps.sh src/sys/mman/mlock.c

all: mk/msync.d
mk/msync.d: src/sys/mman/msync.c
	sh mk/deps.sh src/sys/mman/msync.c

all: mk/mlockall.d
mk/mlockall.d: src/sys/mman/mlockall.c
	sh mk/deps.sh src/sys/mman/mlockall.c

all: mk/munmap.d
mk/munmap.d: src/sys/mman/munmap.c
	sh mk/deps.sh src/sys/mman/munmap.c

all: mk/shm_open.d
mk/shm_open.d: src/sys/mman/shm_open.c
	sh mk/deps.sh src/sys/mman/shm_open.c

all: mk/shm_unlink.d
mk/shm_unlink.d: src/sys/mman/shm_unlink.c
	sh mk/deps.sh src/sys/mman/shm_unlink.c

all: mk/ftime.d
mk/ftime.d: src/sys/timeb/ftime.c
	sh mk/deps.sh src/sys/timeb/ftime.c

all: mk/msgrcv.d
mk/msgrcv.d: src/sys/msg/msgrcv.c
	sh mk/deps.sh src/sys/msg/msgrcv.c

all: mk/msgget.d
mk/msgget.d: src/sys/msg/msgget.c
	sh mk/deps.sh src/sys/msg/msgget.c

all: mk/struct_msqid_ds.d
mk/struct_msqid_ds.d: src/sys/msg/struct_msqid_ds.c
	sh mk/deps.sh src/sys/msg/struct_msqid_ds.c

all: mk/msgctl.d
mk/msgctl.d: src/sys/msg/msgctl.c
	sh mk/deps.sh src/sys/msg/msgctl.c

all: mk/msgsnd.d
mk/msgsnd.d: src/sys/msg/msgsnd.c
	sh mk/deps.sh src/sys/msg/msgsnd.c

all: mk/mknod.d
mk/mknod.d: src/sys/stat/mknod.c
	sh mk/deps.sh src/sys/stat/mknod.c

all: mk/umask.d
mk/umask.d: src/sys/stat/umask.c
	sh mk/deps.sh src/sys/stat/umask.c

all: mk/fchmod.d
mk/fchmod.d: src/sys/stat/fchmod.c
	sh mk/deps.sh src/sys/stat/fchmod.c

all: mk/stat.d
mk/stat.d: src/sys/stat/stat.c
	sh mk/deps.sh src/sys/stat/stat.c

all: mk/mkfifo.d
mk/mkfifo.d: src/sys/stat/mkfifo.c
	sh mk/deps.sh src/sys/stat/mkfifo.c

all: mk/chmod.d
mk/chmod.d: src/sys/stat/chmod.c
	sh mk/deps.sh src/sys/stat/chmod.c

all: mk/mkdir.d
mk/mkdir.d: src/sys/stat/mkdir.c
	sh mk/deps.sh src/sys/stat/mkdir.c

all: mk/lstat.d
mk/lstat.d: src/sys/stat/lstat.c
	sh mk/deps.sh src/sys/stat/lstat.c

all: mk/fstat.d
mk/fstat.d: src/sys/stat/fstat.c
	sh mk/deps.sh src/sys/stat/fstat.c

all: mk/unctrl.d
mk/unctrl.d: src/unctrl/unctrl.c
	sh mk/deps.sh src/unctrl/unctrl.c

all: mk/re_comp.d
mk/re_comp.d: src/re_comp/re_comp.c
	sh mk/deps.sh src/re_comp/re_comp.c

all: mk/re_exec.d
mk/re_exec.d: src/re_comp/re_exec.c
	sh mk/deps.sh src/re_comp/re_exec.c

all: mk/setjmp.d
mk/setjmp.d: src/setjmp/setjmp.c
	sh mk/deps.sh src/setjmp/setjmp.c

all: mk/_longjmp.d
mk/_longjmp.d: src/setjmp/_longjmp.c
	sh mk/deps.sh src/setjmp/_longjmp.c

all: mk/_setjmp.d
mk/_setjmp.d: src/setjmp/_setjmp.c
	sh mk/deps.sh src/setjmp/_setjmp.c

all: mk/sigsetjmp.d
mk/sigsetjmp.d: src/setjmp/sigsetjmp.c
	sh mk/deps.sh src/setjmp/sigsetjmp.c

all: mk/siglongjmp.d
mk/siglongjmp.d: src/setjmp/siglongjmp.c
	sh mk/deps.sh src/setjmp/siglongjmp.c

all: mk/longjmp.d
mk/longjmp.d: src/setjmp/longjmp.c
	sh mk/deps.sh src/setjmp/longjmp.c

all: mk/jmp_buf.d
mk/jmp_buf.d: src/setjmp/jmp_buf.c
	sh mk/deps.sh src/setjmp/jmp_buf.c

all: mk/bzero.d
mk/bzero.d: src/strings/bzero.c
	sh mk/deps.sh src/strings/bzero.c

all: mk/index.d
mk/index.d: src/strings/index.c
	sh mk/deps.sh src/strings/index.c

all: mk/bcmp.d
mk/bcmp.d: src/strings/bcmp.c
	sh mk/deps.sh src/strings/bcmp.c

all: mk/strcasecmp.d
mk/strcasecmp.d: src/strings/strcasecmp.c
	sh mk/deps.sh src/strings/strcasecmp.c

all: mk/rindex.d
mk/rindex.d: src/strings/rindex.c
	sh mk/deps.sh src/strings/rindex.c

all: mk/strncasecmp.d
mk/strncasecmp.d: src/strings/strncasecmp.c
	sh mk/deps.sh src/strings/strncasecmp.c

all: mk/ffs.d
mk/ffs.d: src/strings/ffs.c
	sh mk/deps.sh src/strings/ffs.c

all: mk/bcopy.d
mk/bcopy.d: src/strings/bcopy.c
	sh mk/deps.sh src/strings/bcopy.c

all: mk/lsearch.d
mk/lsearch.d: src/search/lsearch.c
	sh mk/deps.sh src/search/lsearch.c

all: mk/tfind.d
mk/tfind.d: src/search/tfind.c
	sh mk/deps.sh src/search/tfind.c

all: mk/tsearch.d
mk/tsearch.d: src/search/tsearch.c
	sh mk/deps.sh src/search/tsearch.c

all: mk/hdestroy.d
mk/hdestroy.d: src/search/hdestroy.c
	sh mk/deps.sh src/search/hdestroy.c

all: mk/insque.d
mk/insque.d: src/search/insque.c
	sh mk/deps.sh src/search/insque.c

all: mk/twalk.d
mk/twalk.d: src/search/twalk.c
	sh mk/deps.sh src/search/twalk.c

all: mk/hsearch.d
mk/hsearch.d: src/search/hsearch.c
	sh mk/deps.sh src/search/hsearch.c

all: mk/remque.d
mk/remque.d: src/search/remque.c
	sh mk/deps.sh src/search/remque.c

all: mk/hcreate.d
mk/hcreate.d: src/search/hcreate.c
	sh mk/deps.sh src/search/hcreate.c

all: mk/lfind.d
mk/lfind.d: src/search/lfind.c
	sh mk/deps.sh src/search/lfind.c

all: mk/tdelete.d
mk/tdelete.d: src/search/tdelete.c
	sh mk/deps.sh src/search/tdelete.c

all: mk/setutxent.d
mk/setutxent.d: src/utmpx/setutxent.c
	sh mk/deps.sh src/utmpx/setutxent.c

all: mk/getutxent.d
mk/getutxent.d: src/utmpx/getutxent.c
	sh mk/deps.sh src/utmpx/getutxent.c

all: mk/getutxid.d
mk/getutxid.d: src/utmpx/getutxid.c
	sh mk/deps.sh src/utmpx/getutxid.c

all: mk/getutxline.d
mk/getutxline.d: src/utmpx/getutxline.c
	sh mk/deps.sh src/utmpx/getutxline.c

all: mk/pututxline.d
mk/pututxline.d: src/utmpx/pututxline.c
	sh mk/deps.sh src/utmpx/pututxline.c

all: mk/endutxent.d
mk/endutxent.d: src/utmpx/endutxent.c
	sh mk/deps.sh src/utmpx/endutxent.c

all: mk/creat.d
mk/creat.d: src/fcntl/creat.c
	sh mk/deps.sh src/fcntl/creat.c

all: mk/open.d
mk/open.d: src/fcntl/open.c
	sh mk/deps.sh src/fcntl/open.c

all: mk/fcntl.d
mk/fcntl.d: src/fcntl/fcntl.c
	sh mk/deps.sh src/fcntl/fcntl.c

all: mk/environ.d
mk/environ.d: src/environ.c
	sh mk/deps.sh src/environ.c

all: mk/dbm_nextkey.d
mk/dbm_nextkey.d: src/ndbm/dbm_nextkey.c
	sh mk/deps.sh src/ndbm/dbm_nextkey.c

all: mk/dbm_store.d
mk/dbm_store.d: src/ndbm/dbm_store.c
	sh mk/deps.sh src/ndbm/dbm_store.c

all: mk/dbm_delete.d
mk/dbm_delete.d: src/ndbm/dbm_delete.c
	sh mk/deps.sh src/ndbm/dbm_delete.c

all: mk/dbm_firstkey.d
mk/dbm_firstkey.d: src/ndbm/dbm_firstkey.c
	sh mk/deps.sh src/ndbm/dbm_firstkey.c

all: mk/dbm_error.d
mk/dbm_error.d: src/ndbm/dbm_error.c
	sh mk/deps.sh src/ndbm/dbm_error.c

all: mk/dbm_close.d
mk/dbm_close.d: src/ndbm/dbm_close.c
	sh mk/deps.sh src/ndbm/dbm_close.c

all: mk/dbm_fetch.d
mk/dbm_fetch.d: src/ndbm/dbm_fetch.c
	sh mk/deps.sh src/ndbm/dbm_fetch.c

all: mk/dbm_open.d
mk/dbm_open.d: src/ndbm/dbm_open.c
	sh mk/deps.sh src/ndbm/dbm_open.c

all: mk/dbm_clearerr.d
mk/dbm_clearerr.d: src/ndbm/dbm_clearerr.c
	sh mk/deps.sh src/ndbm/dbm_clearerr.c

all: mk/_XOPEN_SOURCE_EXTENDED.d
mk/_XOPEN_SOURCE_EXTENDED.d: src/__FEATURE_TEST_MACROS__/_XOPEN_SOURCE_EXTENDED.c
	sh mk/deps.sh src/__FEATURE_TEST_MACROS__/_XOPEN_SOURCE_EXTENDED.c

all: mk/_XOPEN_SOURCE.d
mk/_XOPEN_SOURCE.d: src/__FEATURE_TEST_MACROS__/_XOPEN_SOURCE.c
	sh mk/deps.sh src/__FEATURE_TEST_MACROS__/_XOPEN_SOURCE.c

all: mk/_POSIX_C_SOURCE.d
mk/_POSIX_C_SOURCE.d: src/__FEATURE_TEST_MACROS__/_POSIX_C_SOURCE.c
	sh mk/deps.sh src/__FEATURE_TEST_MACROS__/_POSIX_C_SOURCE.c

all: mk/regcomp.d
mk/regcomp.d: src/regex/regcomp.c
	sh mk/deps.sh src/regex/regcomp.c

all: mk/regexec.d
mk/regexec.d: src/regex/regexec.c
	sh mk/deps.sh src/regex/regexec.c

all: mk/regfree.d
mk/regfree.d: src/regex/regfree.c
	sh mk/deps.sh src/regex/regfree.c

all: mk/regerror.d
mk/regerror.d: src/regex/regerror.c
	sh mk/deps.sh src/regex/regerror.c

all: mk/fmtmsg.d
mk/fmtmsg.d: src/fmtmsg/fmtmsg.c
	sh mk/deps.sh src/fmtmsg/fmtmsg.c

all: mk/fetestexcept.d
mk/fetestexcept.d: src/fenv/fetestexcept.c
	sh mk/deps.sh src/fenv/fetestexcept.c

all: mk/feholdexcept.d
mk/feholdexcept.d: src/fenv/feholdexcept.c
	sh mk/deps.sh src/fenv/feholdexcept.c

all: mk/fegetexceptflag.d
mk/fegetexceptflag.d: src/fenv/fegetexceptflag.c
	sh mk/deps.sh src/fenv/fegetexceptflag.c

all: mk/feupdateenv.d
mk/feupdateenv.d: src/fenv/feupdateenv.c
	sh mk/deps.sh src/fenv/feupdateenv.c

all: mk/feraiseexcept.d
mk/feraiseexcept.d: src/fenv/feraiseexcept.c
	sh mk/deps.sh src/fenv/feraiseexcept.c

all: mk/fesetexceptflag.d
mk/fesetexceptflag.d: src/fenv/fesetexceptflag.c
	sh mk/deps.sh src/fenv/fesetexceptflag.c

all: mk/fegetenv.d
mk/fegetenv.d: src/fenv/fegetenv.c
	sh mk/deps.sh src/fenv/fegetenv.c

all: mk/fegetround.d
mk/fegetround.d: src/fenv/fegetround.c
	sh mk/deps.sh src/fenv/fegetround.c

all: mk/fesetenv.d
mk/fesetenv.d: src/fenv/fesetenv.c
	sh mk/deps.sh src/fenv/fesetenv.c

all: mk/feclearexcept.d
mk/feclearexcept.d: src/fenv/feclearexcept.c
	sh mk/deps.sh src/fenv/feclearexcept.c

all: mk/fesetround.d
mk/fesetround.d: src/fenv/fesetround.c
	sh mk/deps.sh src/fenv/fesetround.c

all: mk/wordexp.d
mk/wordexp.d: src/wordexp/wordexp.c
	sh mk/deps.sh src/wordexp/wordexp.c

all: mk/wordfree.d
mk/wordfree.d: src/wordexp/wordfree.c
	sh mk/deps.sh src/wordexp/wordfree.c

all: mk/utime.d
mk/utime.d: src/utime/utime.c
	sh mk/deps.sh src/utime/utime.c

all: mk/fnmatch.d
mk/fnmatch.d: src/fnmatch/fnmatch.c
	sh mk/deps.sh src/fnmatch/fnmatch.c

all: mk/daylight.d
mk/daylight.d: src/time/daylight.c
	sh mk/deps.sh src/time/daylight.c

all: mk/localtime.d
mk/localtime.d: src/time/localtime.c
	sh mk/deps.sh src/time/localtime.c

all: mk/timer_create.d
mk/timer_create.d: src/time/timer_create.c
	sh mk/deps.sh src/time/timer_create.c

all: mk/strptime.d
mk/strptime.d: src/time/strptime.c
	sh mk/deps.sh src/time/strptime.c

all: mk/timer_delete.d
mk/timer_delete.d: src/time/timer_delete.c
	sh mk/deps.sh src/time/timer_delete.c

all: mk/strftime.d
mk/strftime.d: src/time/strftime.c
	sh mk/deps.sh src/time/strftime.c

all: mk/gmtime.d
mk/gmtime.d: src/time/gmtime.c
	sh mk/deps.sh src/time/gmtime.c

all: mk/clock_settime.d
mk/clock_settime.d: src/time/clock_settime.c
	sh mk/deps.sh src/time/clock_settime.c

all: mk/timer_gettime.d
mk/timer_gettime.d: src/time/timer_gettime.c
	sh mk/deps.sh src/time/timer_gettime.c

all: mk/time.d
mk/time.d: src/time/time.c
	sh mk/deps.sh src/time/time.c

all: mk/timezone.d
mk/timezone.d: src/time/timezone.c
	sh mk/deps.sh src/time/timezone.c

all: mk/tzset.d
mk/tzset.d: src/time/tzset.c
	sh mk/deps.sh src/time/tzset.c

all: mk/clock.d
mk/clock.d: src/time/clock.c
	sh mk/deps.sh src/time/clock.c

all: mk/timer_settime.d
mk/timer_settime.d: src/time/timer_settime.c
	sh mk/deps.sh src/time/timer_settime.c

all: mk/asctime.d
mk/asctime.d: src/time/asctime.c
	sh mk/deps.sh src/time/asctime.c

all: mk/ctime.d
mk/ctime.d: src/time/ctime.c
	sh mk/deps.sh src/time/ctime.c

all: mk/clock_gettime.d
mk/clock_gettime.d: src/time/clock_gettime.c
	sh mk/deps.sh src/time/clock_gettime.c

all: mk/getdate.d
mk/getdate.d: src/time/getdate.c
	sh mk/deps.sh src/time/getdate.c

all: mk/nanosleep.d
mk/nanosleep.d: src/time/nanosleep.c
	sh mk/deps.sh src/time/nanosleep.c

all: mk/difftime.d
mk/difftime.d: src/time/difftime.c
	sh mk/deps.sh src/time/difftime.c

all: mk/timer_getoverrun.d
mk/timer_getoverrun.d: src/time/timer_getoverrun.c
	sh mk/deps.sh src/time/timer_getoverrun.c

all: mk/getdate_err.d
mk/getdate_err.d: src/time/getdate_err.c
	sh mk/deps.sh src/time/getdate_err.c

all: mk/tzname.d
mk/tzname.d: src/time/tzname.c
	sh mk/deps.sh src/time/tzname.c

all: mk/mktime.d
mk/mktime.d: src/time/mktime.c
	sh mk/deps.sh src/time/mktime.c

all: mk/clock_getres.d
mk/clock_getres.d: src/time/clock_getres.c
	sh mk/deps.sh src/time/clock_getres.c

all: mk/fread.d
mk/fread.d: src/stdio/fread.c
	sh mk/deps.sh src/stdio/fread.c

all: mk/fgetpos.d
mk/fgetpos.d: src/stdio/fgetpos.c
	sh mk/deps.sh src/stdio/fgetpos.c

all: mk/fclose.d
mk/fclose.d: src/stdio/fclose.c
	sh mk/deps.sh src/stdio/fclose.c

all: mk/fopen.d
mk/fopen.d: src/stdio/fopen.c
	sh mk/deps.sh src/stdio/fopen.c

all: mk/funlockfile.d
mk/funlockfile.d: src/stdio/funlockfile.c
	sh mk/deps.sh src/stdio/funlockfile.c

all: mk/ftell.d
mk/ftell.d: src/stdio/ftell.c
	sh mk/deps.sh src/stdio/ftell.c

all: mk/getchar_unlocked.d
mk/getchar_unlocked.d: src/stdio/getchar_unlocked.c
	sh mk/deps.sh src/stdio/getchar_unlocked.c

all: mk/sscanf.d
mk/sscanf.d: src/stdio/sscanf.c
	sh mk/deps.sh src/stdio/sscanf.c

all: mk/fsetpos.d
mk/fsetpos.d: src/stdio/fsetpos.c
	sh mk/deps.sh src/stdio/fsetpos.c

all: mk/flockfile.d
mk/flockfile.d: src/stdio/flockfile.c
	sh mk/deps.sh src/stdio/flockfile.c

all: mk/pclose.d
mk/pclose.d: src/stdio/pclose.c
	sh mk/deps.sh src/stdio/pclose.c

all: mk/scanf.d
mk/scanf.d: src/stdio/scanf.c
	sh mk/deps.sh src/stdio/scanf.c

all: mk/__stderr.d
mk/__stderr.d: src/stdio/__stderr.c
	sh mk/deps.sh src/stdio/__stderr.c

all: mk/rename.d
mk/rename.d: src/stdio/rename.c
	sh mk/deps.sh src/stdio/rename.c

all: mk/fdopen.d
mk/fdopen.d: src/stdio/fdopen.c
	sh mk/deps.sh src/stdio/fdopen.c

all: mk/fgets.d
mk/fgets.d: src/stdio/fgets.c
	sh mk/deps.sh src/stdio/fgets.c

all: mk/getw.d
mk/getw.d: src/stdio/getw.c
	sh mk/deps.sh src/stdio/getw.c

all: mk/fwrite.d
mk/fwrite.d: src/stdio/fwrite.c
	sh mk/deps.sh src/stdio/fwrite.c

all: mk/remove.d
mk/remove.d: src/stdio/remove.c
	sh mk/deps.sh src/stdio/remove.c

all: mk/__stdout.d
mk/__stdout.d: src/stdio/__stdout.c
	sh mk/deps.sh src/stdio/__stdout.c

all: mk/fgetc.d
mk/fgetc.d: src/stdio/fgetc.c
	sh mk/deps.sh src/stdio/fgetc.c

all: mk/clearerr.d
mk/clearerr.d: src/stdio/clearerr.c
	sh mk/deps.sh src/stdio/clearerr.c

all: mk/fputc.d
mk/fputc.d: src/stdio/fputc.c
	sh mk/deps.sh src/stdio/fputc.c

all: mk/__stdin.d
mk/__stdin.d: src/stdio/__stdin.c
	sh mk/deps.sh src/stdio/__stdin.c

all: mk/setvbuf.d
mk/setvbuf.d: src/stdio/setvbuf.c
	sh mk/deps.sh src/stdio/setvbuf.c

all: mk/putchar_unlocked.d
mk/putchar_unlocked.d: src/stdio/putchar_unlocked.c
	sh mk/deps.sh src/stdio/putchar_unlocked.c

all: mk/vsnprintf.d
mk/vsnprintf.d: src/stdio/vsnprintf.c
	sh mk/deps.sh src/stdio/vsnprintf.c

all: mk/vsscanf.d
mk/vsscanf.d: src/stdio/vsscanf.c
	sh mk/deps.sh src/stdio/vsscanf.c

all: mk/vsprintf.d
mk/vsprintf.d: src/stdio/vsprintf.c
	sh mk/deps.sh src/stdio/vsprintf.c

all: mk/freopen.d
mk/freopen.d: src/stdio/freopen.c
	sh mk/deps.sh src/stdio/freopen.c

all: mk/popen.d
mk/popen.d: src/stdio/popen.c
	sh mk/deps.sh src/stdio/popen.c

all: mk/tmpfile.d
mk/tmpfile.d: src/stdio/tmpfile.c
	sh mk/deps.sh src/stdio/tmpfile.c

all: mk/fputs.d
mk/fputs.d: src/stdio/fputs.c
	sh mk/deps.sh src/stdio/fputs.c

all: mk/tempnam.d
mk/tempnam.d: src/stdio/tempnam.c
	sh mk/deps.sh src/stdio/tempnam.c

all: mk/vfprintf.d
mk/vfprintf.d: src/stdio/vfprintf.c
	sh mk/deps.sh src/stdio/vfprintf.c

all: mk/perror.d
mk/perror.d: src/stdio/perror.c
	sh mk/deps.sh src/stdio/perror.c

all: mk/putc_unlocked.d
mk/putc_unlocked.d: src/stdio/putc_unlocked.c
	sh mk/deps.sh src/stdio/putc_unlocked.c

all: mk/fscanf.d
mk/fscanf.d: src/stdio/fscanf.c
	sh mk/deps.sh src/stdio/fscanf.c

all: mk/sprintf.d
mk/sprintf.d: src/stdio/sprintf.c
	sh mk/deps.sh src/stdio/sprintf.c

all: mk/vfscanf.d
mk/vfscanf.d: src/stdio/vfscanf.c
	sh mk/deps.sh src/stdio/vfscanf.c

all: mk/vprintf.d
mk/vprintf.d: src/stdio/vprintf.c
	sh mk/deps.sh src/stdio/vprintf.c

all: mk/fprintf.d
mk/fprintf.d: src/stdio/fprintf.c
	sh mk/deps.sh src/stdio/fprintf.c

all: mk/getchar.d
mk/getchar.d: src/stdio/getchar.c
	sh mk/deps.sh src/stdio/getchar.c

all: mk/rewind.d
mk/rewind.d: src/stdio/rewind.c
	sh mk/deps.sh src/stdio/rewind.c

all: mk/ungetc.d
mk/ungetc.d: src/stdio/ungetc.c
	sh mk/deps.sh src/stdio/ungetc.c

all: mk/getc_unlocked.d
mk/getc_unlocked.d: src/stdio/getc_unlocked.c
	sh mk/deps.sh src/stdio/getc_unlocked.c

all: mk/putw.d
mk/putw.d: src/stdio/putw.c
	sh mk/deps.sh src/stdio/putw.c

all: mk/getc.d
mk/getc.d: src/stdio/getc.c
	sh mk/deps.sh src/stdio/getc.c

all: mk/snprintf.d
mk/snprintf.d: src/stdio/snprintf.c
	sh mk/deps.sh src/stdio/snprintf.c

all: mk/setbuf.d
mk/setbuf.d: src/stdio/setbuf.c
	sh mk/deps.sh src/stdio/setbuf.c

all: mk/gets.d
mk/gets.d: src/stdio/gets.c
	sh mk/deps.sh src/stdio/gets.c

all: mk/__stdio.d
mk/__stdio.d: src/stdio/__stdio.c
	sh mk/deps.sh src/stdio/__stdio.c

all: mk/putc.d
mk/putc.d: src/stdio/putc.c
	sh mk/deps.sh src/stdio/putc.c

all: mk/feof.d
mk/feof.d: src/stdio/feof.c
	sh mk/deps.sh src/stdio/feof.c

all: mk/ferror.d
mk/ferror.d: src/stdio/ferror.c
	sh mk/deps.sh src/stdio/ferror.c

all: mk/putchar.d
mk/putchar.d: src/stdio/putchar.c
	sh mk/deps.sh src/stdio/putchar.c

all: mk/puts.d
mk/puts.d: src/stdio/puts.c
	sh mk/deps.sh src/stdio/puts.c

all: mk/fflush.d
mk/fflush.d: src/stdio/fflush.c
	sh mk/deps.sh src/stdio/fflush.c

all: mk/vscanf.d
mk/vscanf.d: src/stdio/vscanf.c
	sh mk/deps.sh src/stdio/vscanf.c

all: mk/fileno.d
mk/fileno.d: src/stdio/fileno.c
	sh mk/deps.sh src/stdio/fileno.c

all: mk/printf.d
mk/printf.d: src/stdio/printf.c
	sh mk/deps.sh src/stdio/printf.c

all: mk/__printf.d
mk/__printf.d: src/stdio/__printf.c
	sh mk/deps.sh src/stdio/__printf.c

all: mk/fseek.d
mk/fseek.d: src/stdio/fseek.c
	sh mk/deps.sh src/stdio/fseek.c

all: mk/tmpnam.d
mk/tmpnam.d: src/stdio/tmpnam.c
	sh mk/deps.sh src/stdio/tmpnam.c

all: mk/getopt.d
mk/getopt.d: src/unistd/getopt.c
	sh mk/deps.sh src/unistd/getopt.c

all: mk/getegid.d
mk/getegid.d: src/unistd/getegid.c
	sh mk/deps.sh src/unistd/getegid.c

all: mk/access.d
mk/access.d: src/unistd/access.c
	sh mk/deps.sh src/unistd/access.c

all: mk/optopt.d
mk/optopt.d: src/unistd/optopt.c
	sh mk/deps.sh src/unistd/optopt.c

all: mk/getuid.d
mk/getuid.d: src/unistd/getuid.c
	sh mk/deps.sh src/unistd/getuid.c

all: mk/fpathconf.d
mk/fpathconf.d: src/unistd/fpathconf.c
	sh mk/deps.sh src/unistd/fpathconf.c

all: mk/ualarm.d
mk/ualarm.d: src/unistd/ualarm.c
	sh mk/deps.sh src/unistd/ualarm.c

all: mk/alarm.d
mk/alarm.d: src/unistd/alarm.c
	sh mk/deps.sh src/unistd/alarm.c

all: mk/nice.d
mk/nice.d: src/unistd/nice.c
	sh mk/deps.sh src/unistd/nice.c

all: mk/geteuid.d
mk/geteuid.d: src/unistd/geteuid.c
	sh mk/deps.sh src/unistd/geteuid.c

all: mk/lchown.d
mk/lchown.d: src/unistd/lchown.c
	sh mk/deps.sh src/unistd/lchown.c

all: mk/getpass.d
mk/getpass.d: src/unistd/getpass.c
	sh mk/deps.sh src/unistd/getpass.c

all: mk/symlink.d
mk/symlink.d: src/unistd/symlink.c
	sh mk/deps.sh src/unistd/symlink.c

all: mk/sync.d
mk/sync.d: src/unistd/sync.c
	sh mk/deps.sh src/unistd/sync.c

all: mk/opterr.d
mk/opterr.d: src/unistd/opterr.c
	sh mk/deps.sh src/unistd/opterr.c

all: mk/getcwd.d
mk/getcwd.d: src/unistd/getcwd.c
	sh mk/deps.sh src/unistd/getcwd.c

all: mk/vfork.d
mk/vfork.d: src/unistd/vfork.c
	sh mk/deps.sh src/unistd/vfork.c

all: mk/getwd.d
mk/getwd.d: src/unistd/getwd.c
	sh mk/deps.sh src/unistd/getwd.c

all: mk/setsid.d
mk/setsid.d: src/unistd/setsid.c
	sh mk/deps.sh src/unistd/setsid.c

all: mk/ttyname.d
mk/ttyname.d: src/unistd/ttyname.c
	sh mk/deps.sh src/unistd/ttyname.c

all: mk/swab.d
mk/swab.d: src/unistd/swab.c
	sh mk/deps.sh src/unistd/swab.c

all: mk/execve.d
mk/execve.d: src/unistd/execve.c
	sh mk/deps.sh src/unistd/execve.c

all: mk/lseek.d
mk/lseek.d: src/unistd/lseek.c
	sh mk/deps.sh src/unistd/lseek.c

all: mk/execv.d
mk/execv.d: src/unistd/execv.c
	sh mk/deps.sh src/unistd/execv.c

all: mk/fsync.d
mk/fsync.d: src/unistd/fsync.c
	sh mk/deps.sh src/unistd/fsync.c

all: mk/sbrk.d
mk/sbrk.d: src/unistd/sbrk.c
	sh mk/deps.sh src/unistd/sbrk.c

all: mk/optarg.d
mk/optarg.d: src/unistd/optarg.c
	sh mk/deps.sh src/unistd/optarg.c

all: mk/getpagesize.d
mk/getpagesize.d: src/unistd/getpagesize.c
	sh mk/deps.sh src/unistd/getpagesize.c

all: mk/pathconf.d
mk/pathconf.d: src/unistd/pathconf.c
	sh mk/deps.sh src/unistd/pathconf.c

all: mk/rmdir.d
mk/rmdir.d: src/unistd/rmdir.c
	sh mk/deps.sh src/unistd/rmdir.c

all: mk/getpgrp.d
mk/getpgrp.d: src/unistd/getpgrp.c
	sh mk/deps.sh src/unistd/getpgrp.c

all: mk/execl.d
mk/execl.d: src/unistd/execl.c
	sh mk/deps.sh src/unistd/execl.c

all: mk/tcgetpgrp.d
mk/tcgetpgrp.d: src/unistd/tcgetpgrp.c
	sh mk/deps.sh src/unistd/tcgetpgrp.c

all: mk/chdir.d
mk/chdir.d: src/unistd/chdir.c
	sh mk/deps.sh src/unistd/chdir.c

all: mk/read.d
mk/read.d: src/unistd/read.c
	sh mk/deps.sh src/unistd/read.c

all: mk/unlink.d
mk/unlink.d: src/unistd/unlink.c
	sh mk/deps.sh src/unistd/unlink.c

all: mk/ftruncate.d
mk/ftruncate.d: src/unistd/ftruncate.c
	sh mk/deps.sh src/unistd/ftruncate.c

all: mk/isatty.d
mk/isatty.d: src/unistd/isatty.c
	sh mk/deps.sh src/unistd/isatty.c

all: mk/getppid.d
mk/getppid.d: src/unistd/getppid.c
	sh mk/deps.sh src/unistd/getppid.c

all: mk/dup2.d
mk/dup2.d: src/unistd/dup2.c
	sh mk/deps.sh src/unistd/dup2.c

all: mk/pause.d
mk/pause.d: src/unistd/pause.c
	sh mk/deps.sh src/unistd/pause.c

all: mk/fchown.d
mk/fchown.d: src/unistd/fchown.c
	sh mk/deps.sh src/unistd/fchown.c

all: mk/chroot.d
mk/chroot.d: src/unistd/chroot.c
	sh mk/deps.sh src/unistd/chroot.c

all: mk/execvp.d
mk/execvp.d: src/unistd/execvp.c
	sh mk/deps.sh src/unistd/execvp.c

all: mk/setpgid.d
mk/setpgid.d: src/unistd/setpgid.c
	sh mk/deps.sh src/unistd/setpgid.c

all: mk/getlogin.d
mk/getlogin.d: src/unistd/getlogin.c
	sh mk/deps.sh src/unistd/getlogin.c

all: mk/gethostid.d
mk/gethostid.d: src/unistd/gethostid.c
	sh mk/deps.sh src/unistd/gethostid.c

all: mk/setgid.d
mk/setgid.d: src/unistd/setgid.c
	sh mk/deps.sh src/unistd/setgid.c

all: mk/crypt.d
mk/crypt.d: src/unistd/crypt.c
	sh mk/deps.sh src/unistd/crypt.c

all: mk/brk.d
mk/brk.d: src/unistd/brk.c
	sh mk/deps.sh src/unistd/brk.c

all: mk/setuid.d
mk/setuid.d: src/unistd/setuid.c
	sh mk/deps.sh src/unistd/setuid.c

all: mk/setpgrp.d
mk/setpgrp.d: src/unistd/setpgrp.c
	sh mk/deps.sh src/unistd/setpgrp.c

all: mk/_exit.d
mk/_exit.d: src/unistd/_exit.c
	sh mk/deps.sh src/unistd/_exit.c

all: mk/encrypt.d
mk/encrypt.d: src/unistd/encrypt.c
	sh mk/deps.sh src/unistd/encrypt.c

all: mk/write.d
mk/write.d: src/unistd/write.c
	sh mk/deps.sh src/unistd/write.c

all: mk/usleep.d
mk/usleep.d: src/unistd/usleep.c
	sh mk/deps.sh src/unistd/usleep.c

all: mk/execle.d
mk/execle.d: src/unistd/execle.c
	sh mk/deps.sh src/unistd/execle.c

all: mk/setregid.d
mk/setregid.d: src/unistd/setregid.c
	sh mk/deps.sh src/unistd/setregid.c

all: mk/close.d
mk/close.d: src/unistd/close.c
	sh mk/deps.sh src/unistd/close.c

all: mk/getdtablesize.d
mk/getdtablesize.d: src/unistd/getdtablesize.c
	sh mk/deps.sh src/unistd/getdtablesize.c

all: mk/ctermid.d
mk/ctermid.d: src/unistd/ctermid.c
	sh mk/deps.sh src/unistd/ctermid.c

all: mk/link.d
mk/link.d: src/unistd/link.c
	sh mk/deps.sh src/unistd/link.c

all: mk/tcsetpgrp.d
mk/tcsetpgrp.d: src/unistd/tcsetpgrp.c
	sh mk/deps.sh src/unistd/tcsetpgrp.c

all: mk/optind.d
mk/optind.d: src/unistd/optind.c
	sh mk/deps.sh src/unistd/optind.c

all: mk/readlink.d
mk/readlink.d: src/unistd/readlink.c
	sh mk/deps.sh src/unistd/readlink.c

all: mk/truncate.d
mk/truncate.d: src/unistd/truncate.c
	sh mk/deps.sh src/unistd/truncate.c

all: mk/fdatasync.d
mk/fdatasync.d: src/unistd/fdatasync.c
	sh mk/deps.sh src/unistd/fdatasync.c

all: mk/fork.d
mk/fork.d: src/unistd/fork.c
	sh mk/deps.sh src/unistd/fork.c

all: mk/fchdir.d
mk/fchdir.d: src/unistd/fchdir.c
	sh mk/deps.sh src/unistd/fchdir.c

all: mk/getpgid.d
mk/getpgid.d: src/unistd/getpgid.c
	sh mk/deps.sh src/unistd/getpgid.c

all: mk/execlp.d
mk/execlp.d: src/unistd/execlp.c
	sh mk/deps.sh src/unistd/execlp.c

all: mk/pipe.d
mk/pipe.d: src/unistd/pipe.c
	sh mk/deps.sh src/unistd/pipe.c

all: mk/cuserid.d
mk/cuserid.d: src/unistd/cuserid.c
	sh mk/deps.sh src/unistd/cuserid.c

all: mk/confstr.d
mk/confstr.d: src/unistd/confstr.c
	sh mk/deps.sh src/unistd/confstr.c

all: mk/__unistd.d
mk/__unistd.d: src/unistd/__unistd.c
	sh mk/deps.sh src/unistd/__unistd.c

all: mk/getgroups.d
mk/getgroups.d: src/unistd/getgroups.c
	sh mk/deps.sh src/unistd/getgroups.c

all: mk/chown.d
mk/chown.d: src/unistd/chown.c
	sh mk/deps.sh src/unistd/chown.c

all: mk/getsid.d
mk/getsid.d: src/unistd/getsid.c
	sh mk/deps.sh src/unistd/getsid.c

all: mk/lockf.d
mk/lockf.d: src/unistd/lockf.c
	sh mk/deps.sh src/unistd/lockf.c

all: mk/getpid.d
mk/getpid.d: src/unistd/getpid.c
	sh mk/deps.sh src/unistd/getpid.c

all: mk/sysconf.d
mk/sysconf.d: src/unistd/sysconf.c
	sh mk/deps.sh src/unistd/sysconf.c

all: mk/dup.d
mk/dup.d: src/unistd/dup.c
	sh mk/deps.sh src/unistd/dup.c

all: mk/getgid.d
mk/getgid.d: src/unistd/getgid.c
	sh mk/deps.sh src/unistd/getgid.c

all: mk/setreuid.d
mk/setreuid.d: src/unistd/setreuid.c
	sh mk/deps.sh src/unistd/setreuid.c

all: mk/sleep.d
mk/sleep.d: src/unistd/sleep.c
	sh mk/deps.sh src/unistd/sleep.c

all: mk/strncat.d
mk/strncat.d: src/string/strncat.c
	sh mk/deps.sh src/string/strncat.c

all: mk/strncmp.d
mk/strncmp.d: src/string/strncmp.c
	sh mk/deps.sh src/string/strncmp.c

all: mk/memmove.d
mk/memmove.d: src/string/memmove.c
	sh mk/deps.sh src/string/memmove.c

all: mk/strchr.d
mk/strchr.d: src/string/strchr.c
	sh mk/deps.sh src/string/strchr.c

all: mk/strtok.d
mk/strtok.d: src/string/strtok.c
	sh mk/deps.sh src/string/strtok.c

all: mk/memccpy.d
mk/memccpy.d: src/string/memccpy.c
	sh mk/deps.sh src/string/memccpy.c

all: mk/strstr.d
mk/strstr.d: src/string/strstr.c
	sh mk/deps.sh src/string/strstr.c

all: mk/memcmp.d
mk/memcmp.d: src/string/memcmp.c
	sh mk/deps.sh src/string/memcmp.c

all: mk/strcat.d
mk/strcat.d: src/string/strcat.c
	sh mk/deps.sh src/string/strcat.c

all: mk/memchr.d
mk/memchr.d: src/string/memchr.c
	sh mk/deps.sh src/string/memchr.c

all: mk/strdup.d
mk/strdup.d: src/string/strdup.c
	sh mk/deps.sh src/string/strdup.c

all: mk/strcmp.d
mk/strcmp.d: src/string/strcmp.c
	sh mk/deps.sh src/string/strcmp.c

all: mk/strspn.d
mk/strspn.d: src/string/strspn.c
	sh mk/deps.sh src/string/strspn.c

all: mk/strncpy.d
mk/strncpy.d: src/string/strncpy.c
	sh mk/deps.sh src/string/strncpy.c

all: mk/strxfrm.d
mk/strxfrm.d: src/string/strxfrm.c
	sh mk/deps.sh src/string/strxfrm.c

all: mk/memcpy.d
mk/memcpy.d: src/string/memcpy.c
	sh mk/deps.sh src/string/memcpy.c

all: mk/memset.d
mk/memset.d: src/string/memset.c
	sh mk/deps.sh src/string/memset.c

all: mk/strcpy.d
mk/strcpy.d: src/string/strcpy.c
	sh mk/deps.sh src/string/strcpy.c

all: mk/strcoll.d
mk/strcoll.d: src/string/strcoll.c
	sh mk/deps.sh src/string/strcoll.c

all: mk/strpbrk.d
mk/strpbrk.d: src/string/strpbrk.c
	sh mk/deps.sh src/string/strpbrk.c

all: mk/strcspn.d
mk/strcspn.d: src/string/strcspn.c
	sh mk/deps.sh src/string/strcspn.c

all: mk/strlen.d
mk/strlen.d: src/string/strlen.c
	sh mk/deps.sh src/string/strlen.c

all: mk/strerror.d
mk/strerror.d: src/string/strerror.c
	sh mk/deps.sh src/string/strerror.c

all: mk/strrchr.d
mk/strrchr.d: src/string/strrchr.c
	sh mk/deps.sh src/string/strrchr.c

all: mk/ulimit.d
mk/ulimit.d: src/ulimit/ulimit.c
	sh mk/deps.sh src/ulimit/ulimit.c

all: mk/catopen.d
mk/catopen.d: src/nl_types/catopen.c
	sh mk/deps.sh src/nl_types/catopen.c

all: mk/catgets.d
mk/catgets.d: src/nl_types/catgets.c
	sh mk/deps.sh src/nl_types/catgets.c

all: mk/catclose.d
mk/catclose.d: src/nl_types/catclose.c
	sh mk/deps.sh src/nl_types/catclose.c

all: mk/iscntrl.d
mk/iscntrl.d: src/ctype/iscntrl.c
	sh mk/deps.sh src/ctype/iscntrl.c

all: mk/isalnum.d
mk/isalnum.d: src/ctype/isalnum.c
	sh mk/deps.sh src/ctype/isalnum.c

all: mk/tolower.d
mk/tolower.d: src/ctype/tolower.c
	sh mk/deps.sh src/ctype/tolower.c

all: mk/isprint.d
mk/isprint.d: src/ctype/isprint.c
	sh mk/deps.sh src/ctype/isprint.c

all: mk/islower.d
mk/islower.d: src/ctype/islower.c
	sh mk/deps.sh src/ctype/islower.c

all: mk/isxdigit.d
mk/isxdigit.d: src/ctype/isxdigit.c
	sh mk/deps.sh src/ctype/isxdigit.c

all: mk/isblank.d
mk/isblank.d: src/ctype/isblank.c
	sh mk/deps.sh src/ctype/isblank.c

all: mk/toascii.d
mk/toascii.d: src/ctype/toascii.c
	sh mk/deps.sh src/ctype/toascii.c

all: mk/isalpha.d
mk/isalpha.d: src/ctype/isalpha.c
	sh mk/deps.sh src/ctype/isalpha.c

all: mk/isascii.d
mk/isascii.d: src/ctype/isascii.c
	sh mk/deps.sh src/ctype/isascii.c

all: mk/isupper.d
mk/isupper.d: src/ctype/isupper.c
	sh mk/deps.sh src/ctype/isupper.c

all: mk/isspace.d
mk/isspace.d: src/ctype/isspace.c
	sh mk/deps.sh src/ctype/isspace.c

all: mk/ispunct.d
mk/ispunct.d: src/ctype/ispunct.c
	sh mk/deps.sh src/ctype/ispunct.c

all: mk/toupper.d
mk/toupper.d: src/ctype/toupper.c
	sh mk/deps.sh src/ctype/toupper.c

all: mk/isgraph.d
mk/isgraph.d: src/ctype/isgraph.c
	sh mk/deps.sh src/ctype/isgraph.c

all: mk/isdigit.d
mk/isdigit.d: src/ctype/isdigit.c
	sh mk/deps.sh src/ctype/isdigit.c

all: mk/nl_langinfo.d
mk/nl_langinfo.d: src/langinfo/nl_langinfo.c
	sh mk/deps.sh src/langinfo/nl_langinfo.c

all: mk/__grp.d
mk/__grp.d: src/grp/__grp.c
	sh mk/deps.sh src/grp/__grp.c

all: mk/getgrnam.d
mk/getgrnam.d: src/grp/getgrnam.c
	sh mk/deps.sh src/grp/getgrnam.c

all: mk/getgrgid.d
mk/getgrgid.d: src/grp/getgrgid.c
	sh mk/deps.sh src/grp/getgrgid.c

all: mk/endgrent.d
mk/endgrent.d: src/grp/endgrent.c
	sh mk/deps.sh src/grp/endgrent.c

all: mk/getgrent.d
mk/getgrent.d: src/grp/getgrent.c
	sh mk/deps.sh src/grp/getgrent.c

all: mk/setgrent.d
mk/setgrent.d: src/grp/setgrent.c
	sh mk/deps.sh src/grp/setgrent.c

all: mk/makecontext.d
mk/makecontext.d: src/ucontext/makecontext.c
	sh mk/deps.sh src/ucontext/makecontext.c

all: mk/swapcontext.d
mk/swapcontext.d: src/ucontext/swapcontext.c
	sh mk/deps.sh src/ucontext/swapcontext.c

all: mk/getcontext.d
mk/getcontext.d: src/ucontext/getcontext.c
	sh mk/deps.sh src/ucontext/getcontext.c

all: mk/setcontext.d
mk/setcontext.d: src/ucontext/setcontext.c
	sh mk/deps.sh src/ucontext/setcontext.c

all: mk/strfmon.d
mk/strfmon.d: src/monetary/strfmon.c
	sh mk/deps.sh src/monetary/strfmon.c

all: mk/iconv_close.d
mk/iconv_close.d: src/iconv/iconv_close.c
	sh mk/deps.sh src/iconv/iconv_close.c

all: mk/iconv.d
mk/iconv.d: src/iconv/iconv.c
	sh mk/deps.sh src/iconv/iconv.c

all: mk/iconv_open.d
mk/iconv_open.d: src/iconv/iconv_open.c
	sh mk/deps.sh src/iconv/iconv_open.c

all: mk/telldir.d
mk/telldir.d: src/dirent/telldir.c
	sh mk/deps.sh src/dirent/telldir.c

all: mk/closedir.d
mk/closedir.d: src/dirent/closedir.c
	sh mk/deps.sh src/dirent/closedir.c

all: mk/opendir.d
mk/opendir.d: src/dirent/opendir.c
	sh mk/deps.sh src/dirent/opendir.c

all: mk/rewinddir.d
mk/rewinddir.d: src/dirent/rewinddir.c
	sh mk/deps.sh src/dirent/rewinddir.c

all: mk/seekdir.d
mk/seekdir.d: src/dirent/seekdir.c
	sh mk/deps.sh src/dirent/seekdir.c

all: mk/readdir.d
mk/readdir.d: src/dirent/readdir.c
	sh mk/deps.sh src/dirent/readdir.c

all: mk/cexp.d
mk/cexp.d: src/complex/cexp.c
	sh mk/deps.sh src/complex/cexp.c

all: mk/cimag.d
mk/cimag.d: src/complex/cimag.c
	sh mk/deps.sh src/complex/cimag.c

all: mk/ccosh.d
mk/ccosh.d: src/complex/ccosh.c
	sh mk/deps.sh src/complex/ccosh.c

all: mk/catanh.d
mk/catanh.d: src/complex/catanh.c
	sh mk/deps.sh src/complex/catanh.c

all: mk/cacosh.d
mk/cacosh.d: src/complex/cacosh.c
	sh mk/deps.sh src/complex/cacosh.c

all: mk/cproj.d
mk/cproj.d: src/complex/cproj.c
	sh mk/deps.sh src/complex/cproj.c

all: mk/carg.d
mk/carg.d: src/complex/carg.c
	sh mk/deps.sh src/complex/carg.c

all: mk/csqrt.d
mk/csqrt.d: src/complex/csqrt.c
	sh mk/deps.sh src/complex/csqrt.c

all: mk/csin.d
mk/csin.d: src/complex/csin.c
	sh mk/deps.sh src/complex/csin.c

all: mk/cpow.d
mk/cpow.d: src/complex/cpow.c
	sh mk/deps.sh src/complex/cpow.c

all: mk/casin.d
mk/casin.d: src/complex/casin.c
	sh mk/deps.sh src/complex/casin.c

all: mk/creal.d
mk/creal.d: src/complex/creal.c
	sh mk/deps.sh src/complex/creal.c

all: mk/conj.d
mk/conj.d: src/complex/conj.c
	sh mk/deps.sh src/complex/conj.c

all: mk/ctanh.d
mk/ctanh.d: src/complex/ctanh.c
	sh mk/deps.sh src/complex/ctanh.c

all: mk/ccos.d
mk/ccos.d: src/complex/ccos.c
	sh mk/deps.sh src/complex/ccos.c

all: mk/catan.d
mk/catan.d: src/complex/catan.c
	sh mk/deps.sh src/complex/catan.c

all: mk/ctan.d
mk/ctan.d: src/complex/ctan.c
	sh mk/deps.sh src/complex/ctan.c

all: mk/cacos.d
mk/cacos.d: src/complex/cacos.c
	sh mk/deps.sh src/complex/cacos.c

all: mk/casinh.d
mk/casinh.d: src/complex/casinh.c
	sh mk/deps.sh src/complex/casinh.c

all: mk/csinh.d
mk/csinh.d: src/complex/csinh.c
	sh mk/deps.sh src/complex/csinh.c

all: mk/cabs.d
mk/cabs.d: src/complex/cabs.c
	sh mk/deps.sh src/complex/cabs.c

all: mk/clog.d
mk/clog.d: src/complex/clog.c
	sh mk/deps.sh src/complex/clog.c

all: mk/__pwd.d
mk/__pwd.d: src/pwd/__pwd.c
	sh mk/deps.sh src/pwd/__pwd.c

all: mk/getpwent.d
mk/getpwent.d: src/pwd/getpwent.c
	sh mk/deps.sh src/pwd/getpwent.c

all: mk/setpwent.d
mk/setpwent.d: src/pwd/setpwent.c
	sh mk/deps.sh src/pwd/setpwent.c

all: mk/getpwnam.d
mk/getpwnam.d: src/pwd/getpwnam.c
	sh mk/deps.sh src/pwd/getpwnam.c

all: mk/getpwuid.d
mk/getpwuid.d: src/pwd/getpwuid.c
	sh mk/deps.sh src/pwd/getpwuid.c

all: mk/endpwent.d
mk/endpwent.d: src/pwd/endpwent.c
	sh mk/deps.sh src/pwd/endpwent.c

all: mk/__assert.d
mk/__assert.d: src/assert/__assert.c
	sh mk/deps.sh src/assert/__assert.c

all: mk/tgetent.d
mk/tgetent.d: src/term/tgetent.c
	sh mk/deps.sh src/term/tgetent.c

all: mk/set_curterm.d
mk/set_curterm.d: src/term/set_curterm.c
	sh mk/deps.sh src/term/set_curterm.c

all: mk/tgetnum.d
mk/tgetnum.d: src/term/tgetnum.c
	sh mk/deps.sh src/term/tgetnum.c

all: mk/tputs.d
mk/tputs.d: src/term/tputs.c
	sh mk/deps.sh src/term/tputs.c

all: mk/del_curterm.d
mk/del_curterm.d: src/term/del_curterm.c
	sh mk/deps.sh src/term/del_curterm.c

all: mk/tgetstr.d
mk/tgetstr.d: src/term/tgetstr.c
	sh mk/deps.sh src/term/tgetstr.c

all: mk/tigetflag.d
mk/tigetflag.d: src/term/tigetflag.c
	sh mk/deps.sh src/term/tigetflag.c

all: mk/tparm.d
mk/tparm.d: src/term/tparm.c
	sh mk/deps.sh src/term/tparm.c

all: mk/tgetflag.d
mk/tgetflag.d: src/term/tgetflag.c
	sh mk/deps.sh src/term/tgetflag.c

all: mk/tigetnum.d
mk/tigetnum.d: src/term/tigetnum.c
	sh mk/deps.sh src/term/tigetnum.c

all: mk/tiparm.d
mk/tiparm.d: src/term/tiparm.c
	sh mk/deps.sh src/term/tiparm.c

all: mk/tgoto.d
mk/tgoto.d: src/term/tgoto.c
	sh mk/deps.sh src/term/tgoto.c

all: mk/restartterm.d
mk/restartterm.d: src/term/restartterm.c
	sh mk/deps.sh src/term/restartterm.c

all: mk/putp.d
mk/putp.d: src/term/putp.c
	sh mk/deps.sh src/term/putp.c

all: mk/tigetstr.d
mk/tigetstr.d: src/term/tigetstr.c
	sh mk/deps.sh src/term/tigetstr.c

all: mk/setupterm.d
mk/setupterm.d: src/term/setupterm.c
	sh mk/deps.sh src/term/setupterm.c

all: mk/cur_term.d
mk/cur_term.d: src/term/cur_term.c
	sh mk/deps.sh src/term/cur_term.c

all: mk/setlogmask.d
mk/setlogmask.d: src/syslog/setlogmask.c
	sh mk/deps.sh src/syslog/setlogmask.c

all: mk/syslog.d
mk/syslog.d: src/syslog/syslog.c
	sh mk/deps.sh src/syslog/syslog.c

all: mk/openlog.d
mk/openlog.d: src/syslog/openlog.c
	sh mk/deps.sh src/syslog/openlog.c

all: mk/closelog.d
mk/closelog.d: src/syslog/closelog.c
	sh mk/deps.sh src/syslog/closelog.c

all: mk/__errno.d
mk/__errno.d: src/errno/__errno.c
	sh mk/deps.sh src/errno/__errno.c

all: mk/cfsetospeed.d
mk/cfsetospeed.d: src/termios/cfsetospeed.c
	sh mk/deps.sh src/termios/cfsetospeed.c

all: mk/tcsetattr.d
mk/tcsetattr.d: src/termios/tcsetattr.c
	sh mk/deps.sh src/termios/tcsetattr.c

all: mk/tcgetsid.d
mk/tcgetsid.d: src/termios/tcgetsid.c
	sh mk/deps.sh src/termios/tcgetsid.c

all: mk/tcsendbreak.d
mk/tcsendbreak.d: src/termios/tcsendbreak.c
	sh mk/deps.sh src/termios/tcsendbreak.c

all: mk/tcflow.d
mk/tcflow.d: src/termios/tcflow.c
	sh mk/deps.sh src/termios/tcflow.c

all: mk/tcgetattr.d
mk/tcgetattr.d: src/termios/tcgetattr.c
	sh mk/deps.sh src/termios/tcgetattr.c

all: mk/cfgetispeed.d
mk/cfgetispeed.d: src/termios/cfgetispeed.c
	sh mk/deps.sh src/termios/cfgetispeed.c

all: mk/tcdrain.d
mk/tcdrain.d: src/termios/tcdrain.c
	sh mk/deps.sh src/termios/tcdrain.c

all: mk/cfsetispeed.d
mk/cfsetispeed.d: src/termios/cfsetispeed.c
	sh mk/deps.sh src/termios/cfsetispeed.c

all: mk/tcflush.d
mk/tcflush.d: src/termios/tcflush.c
	sh mk/deps.sh src/termios/tcflush.c

all: mk/cfgetospeed.d
mk/cfgetospeed.d: src/termios/cfgetospeed.c
	sh mk/deps.sh src/termios/cfgetospeed.c

all: mk/mq_close.d
mk/mq_close.d: src/mqueue/mq_close.c
	sh mk/deps.sh src/mqueue/mq_close.c

all: mk/mq_send.d
mk/mq_send.d: src/mqueue/mq_send.c
	sh mk/deps.sh src/mqueue/mq_send.c

all: mk/struct_mq_attr.d
mk/struct_mq_attr.d: src/mqueue/struct_mq_attr.c
	sh mk/deps.sh src/mqueue/struct_mq_attr.c

all: mk/mq_unlink.d
mk/mq_unlink.d: src/mqueue/mq_unlink.c
	sh mk/deps.sh src/mqueue/mq_unlink.c

all: mk/mq_notify.d
mk/mq_notify.d: src/mqueue/mq_notify.c
	sh mk/deps.sh src/mqueue/mq_notify.c

all: mk/mq_open.d
mk/mq_open.d: src/mqueue/mq_open.c
	sh mk/deps.sh src/mqueue/mq_open.c

all: mk/mq_receive.d
mk/mq_receive.d: src/mqueue/mq_receive.c
	sh mk/deps.sh src/mqueue/mq_receive.c

all: mk/mq_getattr.d
mk/mq_getattr.d: src/mqueue/mq_getattr.c
	sh mk/deps.sh src/mqueue/mq_getattr.c

all: mk/mq_setattr.d
mk/mq_setattr.d: src/mqueue/mq_setattr.c
	sh mk/deps.sh src/mqueue/mq_setattr.c

all: mk/sched_getparam.d
mk/sched_getparam.d: src/sched/sched_getparam.c
	sh mk/deps.sh src/sched/sched_getparam.c

all: mk/sched_get_priority_max.d
mk/sched_get_priority_max.d: src/sched/sched_get_priority_max.c
	sh mk/deps.sh src/sched/sched_get_priority_max.c

all: mk/struct_sched_param.d
mk/struct_sched_param.d: src/sched/struct_sched_param.c
	sh mk/deps.sh src/sched/struct_sched_param.c

all: mk/sched_getscheduler.d
mk/sched_getscheduler.d: src/sched/sched_getscheduler.c
	sh mk/deps.sh src/sched/sched_getscheduler.c

all: mk/sched_rr_get_interval.d
mk/sched_rr_get_interval.d: src/sched/sched_rr_get_interval.c
	sh mk/deps.sh src/sched/sched_rr_get_interval.c

all: mk/sched_get_priority_min.d
mk/sched_get_priority_min.d: src/sched/sched_get_priority_min.c
	sh mk/deps.sh src/sched/sched_get_priority_min.c

all: mk/sched_yield.d
mk/sched_yield.d: src/sched/sched_yield.c
	sh mk/deps.sh src/sched/sched_yield.c

all: mk/sched_setscheduler.d
mk/sched_setscheduler.d: src/sched/sched_setscheduler.c
	sh mk/deps.sh src/sched/sched_setscheduler.c

all: mk/sched_setparam.d
mk/sched_setparam.d: src/sched/sched_setparam.c
	sh mk/deps.sh src/sched/sched_setparam.c

all: mk/fdetach.d
mk/fdetach.d: src/stropts/fdetach.c
	sh mk/deps.sh src/stropts/fdetach.c

all: mk/isastream.d
mk/isastream.d: src/stropts/isastream.c
	sh mk/deps.sh src/stropts/isastream.c

all: mk/struct_str_list.d
mk/struct_str_list.d: src/stropts/struct_str_list.c
	sh mk/deps.sh src/stropts/struct_str_list.c

all: mk/getmsg.d
mk/getmsg.d: src/stropts/getmsg.c
	sh mk/deps.sh src/stropts/getmsg.c

all: mk/putmsg.d
mk/putmsg.d: src/stropts/putmsg.c
	sh mk/deps.sh src/stropts/putmsg.c

all: mk/fattach.d
mk/fattach.d: src/stropts/fattach.c
	sh mk/deps.sh src/stropts/fattach.c

all: mk/getpmsg.d
mk/getpmsg.d: src/stropts/getpmsg.c
	sh mk/deps.sh src/stropts/getpmsg.c

all: mk/struct_str_mlist.d
mk/struct_str_mlist.d: src/stropts/struct_str_mlist.c
	sh mk/deps.sh src/stropts/struct_str_mlist.c

all: mk/ioctl.d
mk/ioctl.d: src/stropts/ioctl.c
	sh mk/deps.sh src/stropts/ioctl.c

all: mk/putpmsg.d
mk/putpmsg.d: src/stropts/putpmsg.c
	sh mk/deps.sh src/stropts/putpmsg.c

all: mk/wcsrtombs.d
mk/wcsrtombs.d: src/wchar/wcsrtombs.c
	sh mk/deps.sh src/wchar/wcsrtombs.c

all: mk/wcsncmp.d
mk/wcsncmp.d: src/wchar/wcsncmp.c
	sh mk/deps.sh src/wchar/wcsncmp.c

all: mk/wcstok.d
mk/wcstok.d: src/wchar/wcstok.c
	sh mk/deps.sh src/wchar/wcstok.c

all: mk/wcsxfrm.d
mk/wcsxfrm.d: src/wchar/wcsxfrm.c
	sh mk/deps.sh src/wchar/wcsxfrm.c

all: mk/wcscspn.d
mk/wcscspn.d: src/wchar/wcscspn.c
	sh mk/deps.sh src/wchar/wcscspn.c

all: mk/wcstof.d
mk/wcstof.d: src/wchar/wcstof.c
	sh mk/deps.sh src/wchar/wcstof.c

all: mk/wcsncpy.d
mk/wcsncpy.d: src/wchar/wcsncpy.c
	sh mk/deps.sh src/wchar/wcsncpy.c

all: mk/fgetwc.d
mk/fgetwc.d: src/wchar/fgetwc.c
	sh mk/deps.sh src/wchar/fgetwc.c

all: mk/mbsinit.d
mk/mbsinit.d: src/wchar/mbsinit.c
	sh mk/deps.sh src/wchar/mbsinit.c

all: mk/getwc.d
mk/getwc.d: src/wchar/getwc.c
	sh mk/deps.sh src/wchar/getwc.c

all: mk/wcsftime.d
mk/wcsftime.d: src/wchar/wcsftime.c
	sh mk/deps.sh src/wchar/wcsftime.c

all: mk/mbsrtowcs.d
mk/mbsrtowcs.d: src/wchar/mbsrtowcs.c
	sh mk/deps.sh src/wchar/mbsrtowcs.c

all: mk/wcwidth.d
mk/wcwidth.d: src/wchar/wcwidth.c
	sh mk/deps.sh src/wchar/wcwidth.c

all: mk/wcscoll.d
mk/wcscoll.d: src/wchar/wcscoll.c
	sh mk/deps.sh src/wchar/wcscoll.c

all: mk/wcstoull.d
mk/wcstoull.d: src/wchar/wcstoull.c
	sh mk/deps.sh src/wchar/wcstoull.c

all: mk/ungetwc.d
mk/ungetwc.d: src/wchar/ungetwc.c
	sh mk/deps.sh src/wchar/ungetwc.c

all: mk/mbrlen.d
mk/mbrlen.d: src/wchar/mbrlen.c
	sh mk/deps.sh src/wchar/mbrlen.c

all: mk/wcscat.d
mk/wcscat.d: src/wchar/wcscat.c
	sh mk/deps.sh src/wchar/wcscat.c

all: mk/wcstoll.d
mk/wcstoll.d: src/wchar/wcstoll.c
	sh mk/deps.sh src/wchar/wcstoll.c

all: mk/getwchar.d
mk/getwchar.d: src/wchar/getwchar.c
	sh mk/deps.sh src/wchar/getwchar.c

all: mk/wcswidth.d
mk/wcswidth.d: src/wchar/wcswidth.c
	sh mk/deps.sh src/wchar/wcswidth.c

all: mk/wmemset.d
mk/wmemset.d: src/wchar/wmemset.c
	sh mk/deps.sh src/wchar/wmemset.c

all: mk/wcsspn.d
mk/wcsspn.d: src/wchar/wcsspn.c
	sh mk/deps.sh src/wchar/wcsspn.c

all: mk/vwscanf.d
mk/vwscanf.d: src/wchar/vwscanf.c
	sh mk/deps.sh src/wchar/vwscanf.c

all: mk/wcsncat.d
mk/wcsncat.d: src/wchar/wcsncat.c
	sh mk/deps.sh src/wchar/wcsncat.c

all: mk/wprintf.d
mk/wprintf.d: src/wchar/wprintf.c
	sh mk/deps.sh src/wchar/wprintf.c

all: mk/vfwprintf.d
mk/vfwprintf.d: src/wchar/vfwprintf.c
	sh mk/deps.sh src/wchar/vfwprintf.c

all: mk/putwc.d
mk/putwc.d: src/wchar/putwc.c
	sh mk/deps.sh src/wchar/putwc.c

all: mk/wcscpy.d
mk/wcscpy.d: src/wchar/wcscpy.c
	sh mk/deps.sh src/wchar/wcscpy.c

all: mk/swscanf.d
mk/swscanf.d: src/wchar/swscanf.c
	sh mk/deps.sh src/wchar/swscanf.c

all: mk/wcswcs.d
mk/wcswcs.d: src/wchar/wcswcs.c
	sh mk/deps.sh src/wchar/wcswcs.c

all: mk/wscanf.d
mk/wscanf.d: src/wchar/wscanf.c
	sh mk/deps.sh src/wchar/wscanf.c

all: mk/fwprintf.d
mk/fwprintf.d: src/wchar/fwprintf.c
	sh mk/deps.sh src/wchar/fwprintf.c

all: mk/vswprintf.d
mk/vswprintf.d: src/wchar/vswprintf.c
	sh mk/deps.sh src/wchar/vswprintf.c

all: mk/vswscanf.d
mk/vswscanf.d: src/wchar/vswscanf.c
	sh mk/deps.sh src/wchar/vswscanf.c

all: mk/fputwc.d
mk/fputwc.d: src/wchar/fputwc.c
	sh mk/deps.sh src/wchar/fputwc.c

all: mk/fgetws.d
mk/fgetws.d: src/wchar/fgetws.c
	sh mk/deps.sh src/wchar/fgetws.c

all: mk/putwchar.d
mk/putwchar.d: src/wchar/putwchar.c
	sh mk/deps.sh src/wchar/putwchar.c

all: mk/wcspbrk.d
mk/wcspbrk.d: src/wchar/wcspbrk.c
	sh mk/deps.sh src/wchar/wcspbrk.c

all: mk/mbrtowc.d
mk/mbrtowc.d: src/wchar/mbrtowc.c
	sh mk/deps.sh src/wchar/mbrtowc.c

all: mk/wcsrchr.d
mk/wcsrchr.d: src/wchar/wcsrchr.c
	sh mk/deps.sh src/wchar/wcsrchr.c

all: mk/vwprintf.d
mk/vwprintf.d: src/wchar/vwprintf.c
	sh mk/deps.sh src/wchar/vwprintf.c

all: mk/fwscanf.d
mk/fwscanf.d: src/wchar/fwscanf.c
	sh mk/deps.sh src/wchar/fwscanf.c

all: mk/wcstol.d
mk/wcstol.d: src/wchar/wcstol.c
	sh mk/deps.sh src/wchar/wcstol.c

all: mk/wcstold.d
mk/wcstold.d: src/wchar/wcstold.c
	sh mk/deps.sh src/wchar/wcstold.c

all: mk/wmemchr.d
mk/wmemchr.d: src/wchar/wmemchr.c
	sh mk/deps.sh src/wchar/wmemchr.c

all: mk/btowc.d
mk/btowc.d: src/wchar/btowc.c
	sh mk/deps.sh src/wchar/btowc.c

all: mk/wcslen.d
mk/wcslen.d: src/wchar/wcslen.c
	sh mk/deps.sh src/wchar/wcslen.c

all: mk/vfwscanf.d
mk/vfwscanf.d: src/wchar/vfwscanf.c
	sh mk/deps.sh src/wchar/vfwscanf.c

all: mk/fwide.d
mk/fwide.d: src/wchar/fwide.c
	sh mk/deps.sh src/wchar/fwide.c

all: mk/wcschr.d
mk/wcschr.d: src/wchar/wcschr.c
	sh mk/deps.sh src/wchar/wcschr.c

all: mk/wcscmp.d
mk/wcscmp.d: src/wchar/wcscmp.c
	sh mk/deps.sh src/wchar/wcscmp.c

all: mk/wmemmove.d
mk/wmemmove.d: src/wchar/wmemmove.c
	sh mk/deps.sh src/wchar/wmemmove.c

all: mk/wmemcpy.d
mk/wmemcpy.d: src/wchar/wmemcpy.c
	sh mk/deps.sh src/wchar/wmemcpy.c

all: mk/wmemcmp.d
mk/wmemcmp.d: src/wchar/wmemcmp.c
	sh mk/deps.sh src/wchar/wmemcmp.c

all: mk/wcstod.d
mk/wcstod.d: src/wchar/wcstod.c
	sh mk/deps.sh src/wchar/wcstod.c

all: mk/swprintf.d
mk/swprintf.d: src/wchar/swprintf.c
	sh mk/deps.sh src/wchar/swprintf.c

all: mk/wcrtomb.d
mk/wcrtomb.d: src/wchar/wcrtomb.c
	sh mk/deps.sh src/wchar/wcrtomb.c

all: mk/wctob.d
mk/wctob.d: src/wchar/wctob.c
	sh mk/deps.sh src/wchar/wctob.c

all: mk/wcstoul.d
mk/wcstoul.d: src/wchar/wcstoul.c
	sh mk/deps.sh src/wchar/wcstoul.c

all: mk/fputws.d
mk/fputws.d: src/wchar/fputws.c
	sh mk/deps.sh src/wchar/fputws.c

all: mk/wcsstr.d
mk/wcsstr.d: src/wchar/wcsstr.c
	sh mk/deps.sh src/wchar/wcsstr.c

all: mk/sem_open.d
mk/sem_open.d: src/semaphore/sem_open.c
	sh mk/deps.sh src/semaphore/sem_open.c

all: mk/sem_wait.d
mk/sem_wait.d: src/semaphore/sem_wait.c
	sh mk/deps.sh src/semaphore/sem_wait.c

all: mk/sem_init.d
mk/sem_init.d: src/semaphore/sem_init.c
	sh mk/deps.sh src/semaphore/sem_init.c

all: mk/sem_close.d
mk/sem_close.d: src/semaphore/sem_close.c
	sh mk/deps.sh src/semaphore/sem_close.c

all: mk/sem_getvalue.d
mk/sem_getvalue.d: src/semaphore/sem_getvalue.c
	sh mk/deps.sh src/semaphore/sem_getvalue.c

all: mk/sem_post.d
mk/sem_post.d: src/semaphore/sem_post.c
	sh mk/deps.sh src/semaphore/sem_post.c

all: mk/sem_unlink.d
mk/sem_unlink.d: src/semaphore/sem_unlink.c
	sh mk/deps.sh src/semaphore/sem_unlink.c

all: mk/sem_destroy.d
mk/sem_destroy.d: src/semaphore/sem_destroy.c
	sh mk/deps.sh src/semaphore/sem_destroy.c

all: mk/sem_trywait.d
mk/sem_trywait.d: src/semaphore/sem_trywait.c
	sh mk/deps.sh src/semaphore/sem_trywait.c

all: mk/wunctrl.d
mk/wunctrl.d: src/curses/wunctrl.c
	sh mk/deps.sh src/curses/wunctrl.c

all: mk/wsyncup.d
mk/wsyncup.d: src/curses/wsyncup.c
	sh mk/deps.sh src/curses/wsyncup.c

all: mk/baudrate.d
mk/baudrate.d: src/curses/baudrate.c
	sh mk/deps.sh src/curses/baudrate.c

all: mk/slk_noutrefresh.d
mk/slk_noutrefresh.d: src/curses/slk_noutrefresh.c
	sh mk/deps.sh src/curses/slk_noutrefresh.c

all: mk/def_shell_mode.d
mk/def_shell_mode.d: src/curses/def_shell_mode.c
	sh mk/deps.sh src/curses/def_shell_mode.c

all: mk/halfdelay.d
mk/halfdelay.d: src/curses/halfdelay.c
	sh mk/deps.sh src/curses/halfdelay.c

all: mk/touchline.d
mk/touchline.d: src/curses/touchline.c
	sh mk/deps.sh src/curses/touchline.c

all: mk/attroff.d
mk/attroff.d: src/curses/attroff.c
	sh mk/deps.sh src/curses/attroff.c

all: mk/add_wch.d
mk/add_wch.d: src/curses/add_wch.c
	sh mk/deps.sh src/curses/add_wch.c

all: mk/termattrs.d
mk/termattrs.d: src/curses/termattrs.c
	sh mk/deps.sh src/curses/termattrs.c

all: mk/longname.d
mk/longname.d: src/curses/longname.c
	sh mk/deps.sh src/curses/longname.c

all: mk/overlay.d
mk/overlay.d: src/curses/overlay.c
	sh mk/deps.sh src/curses/overlay.c

all: mk/ripoffline.d
mk/ripoffline.d: src/curses/ripoffline.c
	sh mk/deps.sh src/curses/ripoffline.c

all: mk/ins_wch.d
mk/ins_wch.d: src/curses/ins_wch.c
	sh mk/deps.sh src/curses/ins_wch.c

all: mk/standend.d
mk/standend.d: src/curses/standend.c
	sh mk/deps.sh src/curses/standend.c

all: mk/attr_set.d
mk/attr_set.d: src/curses/attr_set.c
	sh mk/deps.sh src/curses/attr_set.c

all: mk/touchwin.d
mk/touchwin.d: src/curses/touchwin.c
	sh mk/deps.sh src/curses/touchwin.c

all: mk/getwin.d
mk/getwin.d: src/curses/getwin.c
	sh mk/deps.sh src/curses/getwin.c

all: mk/slk_label.d
mk/slk_label.d: src/curses/slk_label.c
	sh mk/deps.sh src/curses/slk_label.c

all: mk/initscr.d
mk/initscr.d: src/curses/initscr.c
	sh mk/deps.sh src/curses/initscr.c

all: mk/standout.d
mk/standout.d: src/curses/standout.c
	sh mk/deps.sh src/curses/standout.c

all: mk/prefresh.d
mk/prefresh.d: src/curses/prefresh.c
	sh mk/deps.sh src/curses/prefresh.c

all: mk/notimeout.d
mk/notimeout.d: src/curses/notimeout.c
	sh mk/deps.sh src/curses/notimeout.c

all: mk/vline_set.d
mk/vline_set.d: src/curses/vline_set.c
	sh mk/deps.sh src/curses/vline_set.c

all: mk/in_wchnstr.d
mk/in_wchnstr.d: src/curses/in_wchnstr.c
	sh mk/deps.sh src/curses/in_wchnstr.c

all: mk/typeahead.d
mk/typeahead.d: src/curses/typeahead.c
	sh mk/deps.sh src/curses/typeahead.c

all: mk/vid_attr.d
mk/vid_attr.d: src/curses/vid_attr.c
	sh mk/deps.sh src/curses/vid_attr.c

all: mk/slk_touch.d
mk/slk_touch.d: src/curses/slk_touch.c
	sh mk/deps.sh src/curses/slk_touch.c

all: mk/attr_on.d
mk/attr_on.d: src/curses/attr_on.c
	sh mk/deps.sh src/curses/attr_on.c

all: mk/hline_set.d
mk/hline_set.d: src/curses/hline_set.c
	sh mk/deps.sh src/curses/hline_set.c

all: mk/scrollok.d
mk/scrollok.d: src/curses/scrollok.c
	sh mk/deps.sh src/curses/scrollok.c

all: mk/beep.d
mk/beep.d: src/curses/beep.c
	sh mk/deps.sh src/curses/beep.c

all: mk/init_color.d
mk/init_color.d: src/curses/init_color.c
	sh mk/deps.sh src/curses/init_color.c

all: mk/timeout.d
mk/timeout.d: src/curses/timeout.c
	sh mk/deps.sh src/curses/timeout.c

all: mk/color_content.d
mk/color_content.d: src/curses/color_content.c
	sh mk/deps.sh src/curses/color_content.c

all: mk/scr_restore.d
mk/scr_restore.d: src/curses/scr_restore.c
	sh mk/deps.sh src/curses/scr_restore.c

all: mk/unget_wch.d
mk/unget_wch.d: src/curses/unget_wch.c
	sh mk/deps.sh src/curses/unget_wch.c

all: mk/wnoutrefresh.d
mk/wnoutrefresh.d: src/curses/wnoutrefresh.c
	sh mk/deps.sh src/curses/wnoutrefresh.c

all: mk/insnstr.d
mk/insnstr.d: src/curses/insnstr.c
	sh mk/deps.sh src/curses/insnstr.c

all: mk/cbreak.d
mk/cbreak.d: src/curses/cbreak.c
	sh mk/deps.sh src/curses/cbreak.c

all: mk/in_wch.d
mk/in_wch.d: src/curses/in_wch.c
	sh mk/deps.sh src/curses/in_wch.c

all: mk/ungetch.d
mk/ungetch.d: src/curses/ungetch.c
	sh mk/deps.sh src/curses/ungetch.c

all: mk/in_wchstr.d
mk/in_wchstr.d: src/curses/in_wchstr.c
	sh mk/deps.sh src/curses/in_wchstr.c

all: mk/use_env.d
mk/use_env.d: src/curses/use_env.c
	sh mk/deps.sh src/curses/use_env.c

all: mk/redrawwin.d
mk/redrawwin.d: src/curses/redrawwin.c
	sh mk/deps.sh src/curses/redrawwin.c

all: mk/color_set.d
mk/color_set.d: src/curses/color_set.c
	sh mk/deps.sh src/curses/color_set.c

all: mk/wcursyncup.d
mk/wcursyncup.d: src/curses/wcursyncup.c
	sh mk/deps.sh src/curses/wcursyncup.c

all: mk/pnoutrefresh.d
mk/pnoutrefresh.d: src/curses/pnoutrefresh.c
	sh mk/deps.sh src/curses/pnoutrefresh.c

all: mk/slk_attrset.d
mk/slk_attrset.d: src/curses/slk_attrset.c
	sh mk/deps.sh src/curses/slk_attrset.c

all: mk/delch.d
mk/delch.d: src/curses/delch.c
	sh mk/deps.sh src/curses/delch.c

all: mk/slk_init.d
mk/slk_init.d: src/curses/slk_init.c
	sh mk/deps.sh src/curses/slk_init.c

all: mk/termname.d
mk/termname.d: src/curses/termname.c
	sh mk/deps.sh src/curses/termname.c

all: mk/bkgrnd.d
mk/bkgrnd.d: src/curses/bkgrnd.c
	sh mk/deps.sh src/curses/bkgrnd.c

all: mk/attrset.d
mk/attrset.d: src/curses/attrset.c
	sh mk/deps.sh src/curses/attrset.c

all: mk/add_wchstr.d
mk/add_wchstr.d: src/curses/add_wchstr.c
	sh mk/deps.sh src/curses/add_wchstr.c

all: mk/wprintw.d
mk/wprintw.d: src/curses/wprintw.c
	sh mk/deps.sh src/curses/wprintw.c

all: mk/start_color.d
mk/start_color.d: src/curses/start_color.c
	sh mk/deps.sh src/curses/start_color.c

all: mk/addstr.d
mk/addstr.d: src/curses/addstr.c
	sh mk/deps.sh src/curses/addstr.c

all: mk/get_wch.d
mk/get_wch.d: src/curses/get_wch.c
	sh mk/deps.sh src/curses/get_wch.c

all: mk/untouchwin.d
mk/untouchwin.d: src/curses/untouchwin.c
	sh mk/deps.sh src/curses/untouchwin.c

all: mk/getbkgd.d
mk/getbkgd.d: src/curses/getbkgd.c
	sh mk/deps.sh src/curses/getbkgd.c

all: mk/keyname.d
mk/keyname.d: src/curses/keyname.c
	sh mk/deps.sh src/curses/keyname.c

all: mk/erasewchar.d
mk/erasewchar.d: src/curses/erasewchar.c
	sh mk/deps.sh src/curses/erasewchar.c

all: mk/clrtobot.d
mk/clrtobot.d: src/curses/clrtobot.c
	sh mk/deps.sh src/curses/clrtobot.c

all: mk/scanw.d
mk/scanw.d: src/curses/scanw.c
	sh mk/deps.sh src/curses/scanw.c

all: mk/echo.d
mk/echo.d: src/curses/echo.c
	sh mk/deps.sh src/curses/echo.c

all: mk/add_wchnstr.d
mk/add_wchnstr.d: src/curses/add_wchnstr.c
	sh mk/deps.sh src/curses/add_wchnstr.c

all: mk/napms.d
mk/napms.d: src/curses/napms.c
	sh mk/deps.sh src/curses/napms.c

all: mk/noraw.d
mk/noraw.d: src/curses/noraw.c
	sh mk/deps.sh src/curses/noraw.c

all: mk/dupwin.d
mk/dupwin.d: src/curses/dupwin.c
	sh mk/deps.sh src/curses/dupwin.c

all: mk/filter.d
mk/filter.d: src/curses/filter.c
	sh mk/deps.sh src/curses/filter.c

all: mk/addwstr.d
mk/addwstr.d: src/curses/addwstr.c
	sh mk/deps.sh src/curses/addwstr.c

all: mk/mvderwin.d
mk/mvderwin.d: src/curses/mvderwin.c
	sh mk/deps.sh src/curses/mvderwin.c

all: mk/move.d
mk/move.d: src/curses/move.c
	sh mk/deps.sh src/curses/move.c

all: mk/vidputs.d
mk/vidputs.d: src/curses/vidputs.c
	sh mk/deps.sh src/curses/vidputs.c

all: mk/attron.d
mk/attron.d: src/curses/attron.c
	sh mk/deps.sh src/curses/attron.c

all: mk/insch.d
mk/insch.d: src/curses/insch.c
	sh mk/deps.sh src/curses/insch.c

all: mk/slk_attron.d
mk/slk_attron.d: src/curses/slk_attron.c
	sh mk/deps.sh src/curses/slk_attron.c

all: mk/meta.d
mk/meta.d: src/curses/meta.c
	sh mk/deps.sh src/curses/meta.c

all: mk/mvwprintw.d
mk/mvwprintw.d: src/curses/mvwprintw.c
	sh mk/deps.sh src/curses/mvwprintw.c

all: mk/deleteln.d
mk/deleteln.d: src/curses/deleteln.c
	sh mk/deps.sh src/curses/deleteln.c

all: mk/is_linetouched.d
mk/is_linetouched.d: src/curses/is_linetouched.c
	sh mk/deps.sh src/curses/is_linetouched.c

all: mk/newterm.d
mk/newterm.d: src/curses/newterm.c
	sh mk/deps.sh src/curses/newterm.c

all: mk/slk_attr_off.d
mk/slk_attr_off.d: src/curses/slk_attr_off.c
	sh mk/deps.sh src/curses/slk_attr_off.c

all: mk/slk_restore.d
mk/slk_restore.d: src/curses/slk_restore.c
	sh mk/deps.sh src/curses/slk_restore.c

all: mk/hline.d
mk/hline.d: src/curses/hline.c
	sh mk/deps.sh src/curses/hline.c

all: mk/def_prog_mode.d
mk/def_prog_mode.d: src/curses/def_prog_mode.c
	sh mk/deps.sh src/curses/def_prog_mode.c

all: mk/insstr.d
mk/insstr.d: src/curses/insstr.c
	sh mk/deps.sh src/curses/insstr.c

all: mk/innwstr.d
mk/innwstr.d: src/curses/innwstr.c
	sh mk/deps.sh src/curses/innwstr.c

all: mk/vw_scanw.d
mk/vw_scanw.d: src/curses/vw_scanw.c
	sh mk/deps.sh src/curses/vw_scanw.c

all: mk/bkgrndset.d
mk/bkgrndset.d: src/curses/bkgrndset.c
	sh mk/deps.sh src/curses/bkgrndset.c

all: mk/idcok.d
mk/idcok.d: src/curses/idcok.c
	sh mk/deps.sh src/curses/idcok.c

all: mk/doupdate.d
mk/doupdate.d: src/curses/doupdate.c
	sh mk/deps.sh src/curses/doupdate.c

all: mk/set_term.d
mk/set_term.d: src/curses/set_term.c
	sh mk/deps.sh src/curses/set_term.c

all: mk/addch.d
mk/addch.d: src/curses/addch.c
	sh mk/deps.sh src/curses/addch.c

all: mk/noecho.d
mk/noecho.d: src/curses/noecho.c
	sh mk/deps.sh src/curses/noecho.c

all: mk/wsyncdown.d
mk/wsyncdown.d: src/curses/wsyncdown.c
	sh mk/deps.sh src/curses/wsyncdown.c

all: mk/mvscanw.d
mk/mvscanw.d: src/curses/mvscanw.c
	sh mk/deps.sh src/curses/mvscanw.c

all: mk/idlok.d
mk/idlok.d: src/curses/idlok.c
	sh mk/deps.sh src/curses/idlok.c

all: mk/echo_wchar.d
mk/echo_wchar.d: src/curses/echo_wchar.c
	sh mk/deps.sh src/curses/echo_wchar.c

all: mk/vline.d
mk/vline.d: src/curses/vline.c
	sh mk/deps.sh src/curses/vline.c

all: mk/COLS.d
mk/COLS.d: src/curses/COLS.c
	sh mk/deps.sh src/curses/COLS.c

all: mk/inwstr.d
mk/inwstr.d: src/curses/inwstr.c
	sh mk/deps.sh src/curses/inwstr.c

all: mk/flash.d
mk/flash.d: src/curses/flash.c
	sh mk/deps.sh src/curses/flash.c

all: mk/printw.d
mk/printw.d: src/curses/printw.c
	sh mk/deps.sh src/curses/printw.c

all: mk/wredrawln.d
mk/wredrawln.d: src/curses/wredrawln.c
	sh mk/deps.sh src/curses/wredrawln.c

all: mk/reset_shell_mode.d
mk/reset_shell_mode.d: src/curses/reset_shell_mode.c
	sh mk/deps.sh src/curses/reset_shell_mode.c

all: mk/attr_get.d
mk/attr_get.d: src/curses/attr_get.c
	sh mk/deps.sh src/curses/attr_get.c

all: mk/erasechar.d
mk/erasechar.d: src/curses/erasechar.c
	sh mk/deps.sh src/curses/erasechar.c

all: mk/endwin.d
mk/endwin.d: src/curses/endwin.c
	sh mk/deps.sh src/curses/endwin.c

all: mk/get_wstr.d
mk/get_wstr.d: src/curses/get_wstr.c
	sh mk/deps.sh src/curses/get_wstr.c

all: mk/attr_off.d
mk/attr_off.d: src/curses/attr_off.c
	sh mk/deps.sh src/curses/attr_off.c

all: mk/derwin.d
mk/derwin.d: src/curses/derwin.c
	sh mk/deps.sh src/curses/derwin.c

all: mk/slk_set.d
mk/slk_set.d: src/curses/slk_set.c
	sh mk/deps.sh src/curses/slk_set.c

all: mk/nocbreak.d
mk/nocbreak.d: src/curses/nocbreak.c
	sh mk/deps.sh src/curses/nocbreak.c

all: mk/slk_attroff.d
mk/slk_attroff.d: src/curses/slk_attroff.c
	sh mk/deps.sh src/curses/slk_attroff.c

all: mk/getstr.d
mk/getstr.d: src/curses/getstr.c
	sh mk/deps.sh src/curses/getstr.c

all: mk/vid_puts.d
mk/vid_puts.d: src/curses/vid_puts.c
	sh mk/deps.sh src/curses/vid_puts.c

all: mk/delscreen.d
mk/delscreen.d: src/curses/delscreen.c
	sh mk/deps.sh src/curses/delscreen.c

all: mk/noqiflush.d
mk/noqiflush.d: src/curses/noqiflush.c
	sh mk/deps.sh src/curses/noqiflush.c

all: mk/pechochar.d
mk/pechochar.d: src/curses/pechochar.c
	sh mk/deps.sh src/curses/pechochar.c

all: mk/insertln.d
mk/insertln.d: src/curses/insertln.c
	sh mk/deps.sh src/curses/insertln.c

all: mk/scr_set.d
mk/scr_set.d: src/curses/scr_set.c
	sh mk/deps.sh src/curses/scr_set.c

all: mk/slk_clear.d
mk/slk_clear.d: src/curses/slk_clear.c
	sh mk/deps.sh src/curses/slk_clear.c

all: mk/COLORS.d
mk/COLORS.d: src/curses/COLORS.c
	sh mk/deps.sh src/curses/COLORS.c

all: mk/getbkgrnd.d
mk/getbkgrnd.d: src/curses/getbkgrnd.c
	sh mk/deps.sh src/curses/getbkgrnd.c

all: mk/flushinp.d
mk/flushinp.d: src/curses/flushinp.c
	sh mk/deps.sh src/curses/flushinp.c

all: mk/newpad.d
mk/newpad.d: src/curses/newpad.c
	sh mk/deps.sh src/curses/newpad.c

all: mk/delwin.d
mk/delwin.d: src/curses/delwin.c
	sh mk/deps.sh src/curses/delwin.c

all: mk/slk_refresh.d
mk/slk_refresh.d: src/curses/slk_refresh.c
	sh mk/deps.sh src/curses/slk_refresh.c

all: mk/immedok.d
mk/immedok.d: src/curses/immedok.c
	sh mk/deps.sh src/curses/immedok.c

all: mk/copywin.d
mk/copywin.d: src/curses/copywin.c
	sh mk/deps.sh src/curses/copywin.c

all: mk/has_colors.d
mk/has_colors.d: src/curses/has_colors.c
	sh mk/deps.sh src/curses/has_colors.c

all: mk/slk_attr_on.d
mk/slk_attr_on.d: src/curses/slk_attr_on.c
	sh mk/deps.sh src/curses/slk_attr_on.c

all: mk/addchstr.d
mk/addchstr.d: src/curses/addchstr.c
	sh mk/deps.sh src/curses/addchstr.c

all: mk/border_set.d
mk/border_set.d: src/curses/border_set.c
	sh mk/deps.sh src/curses/border_set.c

all: mk/ins_wstr.d
mk/ins_wstr.d: src/curses/ins_wstr.c
	sh mk/deps.sh src/curses/ins_wstr.c

all: mk/has_ic.d
mk/has_ic.d: src/curses/has_ic.c
	sh mk/deps.sh src/curses/has_ic.c

all: mk/mvprintw.d
mk/mvprintw.d: src/curses/mvprintw.c
	sh mk/deps.sh src/curses/mvprintw.c

all: mk/has_il.d
mk/has_il.d: src/curses/has_il.c
	sh mk/deps.sh src/curses/has_il.c

all: mk/addnwstr.d
mk/addnwstr.d: src/curses/addnwstr.c
	sh mk/deps.sh src/curses/addnwstr.c

all: mk/mvcur.d
mk/mvcur.d: src/curses/mvcur.c
	sh mk/deps.sh src/curses/mvcur.c

all: mk/putwin.d
mk/putwin.d: src/curses/putwin.c
	sh mk/deps.sh src/curses/putwin.c

all: mk/clear.d
mk/clear.d: src/curses/clear.c
	sh mk/deps.sh src/curses/clear.c

all: mk/bkgd.d
mk/bkgd.d: src/curses/bkgd.c
	sh mk/deps.sh src/curses/bkgd.c

all: mk/refresh.d
mk/refresh.d: src/curses/refresh.c
	sh mk/deps.sh src/curses/refresh.c

all: mk/scrl.d
mk/scrl.d: src/curses/scrl.c
	sh mk/deps.sh src/curses/scrl.c

all: mk/reset_prog_mode.d
mk/reset_prog_mode.d: src/curses/reset_prog_mode.c
	sh mk/deps.sh src/curses/reset_prog_mode.c

all: mk/init_pair.d
mk/init_pair.d: src/curses/init_pair.c
	sh mk/deps.sh src/curses/init_pair.c

all: mk/slk_color.d
mk/slk_color.d: src/curses/slk_color.c
	sh mk/deps.sh src/curses/slk_color.c

all: mk/COLOR_PAIRS.d
mk/COLOR_PAIRS.d: src/curses/COLOR_PAIRS.c
	sh mk/deps.sh src/curses/COLOR_PAIRS.c

all: mk/echochar.d
mk/echochar.d: src/curses/echochar.c
	sh mk/deps.sh src/curses/echochar.c

all: mk/newwin.d
mk/newwin.d: src/curses/newwin.c
	sh mk/deps.sh src/curses/newwin.c

all: mk/vidattr.d
mk/vidattr.d: src/curses/vidattr.c
	sh mk/deps.sh src/curses/vidattr.c

all: mk/pecho_wchar.d
mk/pecho_wchar.d: src/curses/pecho_wchar.c
	sh mk/deps.sh src/curses/pecho_wchar.c

all: mk/inch.d
mk/inch.d: src/curses/inch.c
	sh mk/deps.sh src/curses/inch.c

all: mk/intrflush.d
mk/intrflush.d: src/curses/intrflush.c
	sh mk/deps.sh src/curses/intrflush.c

all: mk/leaveok.d
mk/leaveok.d: src/curses/leaveok.c
	sh mk/deps.sh src/curses/leaveok.c

all: mk/overwrite.d
mk/overwrite.d: src/curses/overwrite.c
	sh mk/deps.sh src/curses/overwrite.c

all: mk/bkgdset.d
mk/bkgdset.d: src/curses/bkgdset.c
	sh mk/deps.sh src/curses/bkgdset.c

all: mk/addchnstr.d
mk/addchnstr.d: src/curses/addchnstr.c
	sh mk/deps.sh src/curses/addchnstr.c

all: mk/scr_dump.d
mk/scr_dump.d: src/curses/scr_dump.c
	sh mk/deps.sh src/curses/scr_dump.c

all: mk/erase.d
mk/erase.d: src/curses/erase.c
	sh mk/deps.sh src/curses/erase.c

all: mk/vw_printw.d
mk/vw_printw.d: src/curses/vw_printw.c
	sh mk/deps.sh src/curses/vw_printw.c

all: mk/setcchar.d
mk/setcchar.d: src/curses/setcchar.c
	sh mk/deps.sh src/curses/setcchar.c

all: mk/savetty.d
mk/savetty.d: src/curses/savetty.c
	sh mk/deps.sh src/curses/savetty.c

all: mk/wscanw.d
mk/wscanw.d: src/curses/wscanw.c
	sh mk/deps.sh src/curses/wscanw.c

all: mk/box_set.d
mk/box_set.d: src/curses/box_set.c
	sh mk/deps.sh src/curses/box_set.c

all: mk/clrtoeol.d
mk/clrtoeol.d: src/curses/clrtoeol.c
	sh mk/deps.sh src/curses/clrtoeol.c

all: mk/inchnstr.d
mk/inchnstr.d: src/curses/inchnstr.c
	sh mk/deps.sh src/curses/inchnstr.c

all: mk/term_attrs.d
mk/term_attrs.d: src/curses/term_attrs.c
	sh mk/deps.sh src/curses/term_attrs.c

all: mk/insdelln.d
mk/insdelln.d: src/curses/insdelln.c
	sh mk/deps.sh src/curses/insdelln.c

all: mk/curscr.d
mk/curscr.d: src/curses/curscr.c
	sh mk/deps.sh src/curses/curscr.c

all: mk/isendwin.d
mk/isendwin.d: src/curses/isendwin.c
	sh mk/deps.sh src/curses/isendwin.c

all: mk/subwin.d
mk/subwin.d: src/curses/subwin.c
	sh mk/deps.sh src/curses/subwin.c

all: mk/border.d
mk/border.d: src/curses/border.c
	sh mk/deps.sh src/curses/border.c

all: mk/mvwscanw.d
mk/mvwscanw.d: src/curses/mvwscanw.c
	sh mk/deps.sh src/curses/mvwscanw.c

all: mk/nodelay.d
mk/nodelay.d: src/curses/nodelay.c
	sh mk/deps.sh src/curses/nodelay.c

all: mk/scr_init.d
mk/scr_init.d: src/curses/scr_init.c
	sh mk/deps.sh src/curses/scr_init.c

all: mk/subpad.d
mk/subpad.d: src/curses/subpad.c
	sh mk/deps.sh src/curses/subpad.c

all: mk/delay_output.d
mk/delay_output.d: src/curses/delay_output.c
	sh mk/deps.sh src/curses/delay_output.c

all: mk/stdscr.d
mk/stdscr.d: src/curses/stdscr.c
	sh mk/deps.sh src/curses/stdscr.c

all: mk/raw.d
mk/raw.d: src/curses/raw.c
	sh mk/deps.sh src/curses/raw.c

all: mk/is_wintouched.d
mk/is_wintouched.d: src/curses/is_wintouched.c
	sh mk/deps.sh src/curses/is_wintouched.c

all: mk/key_name.d
mk/key_name.d: src/curses/key_name.c
	sh mk/deps.sh src/curses/key_name.c

all: mk/killchar.d
mk/killchar.d: src/curses/killchar.c
	sh mk/deps.sh src/curses/killchar.c

all: mk/can_change_color.d
mk/can_change_color.d: src/curses/can_change_color.c
	sh mk/deps.sh src/curses/can_change_color.c

all: mk/clearok.d
mk/clearok.d: src/curses/clearok.c
	sh mk/deps.sh src/curses/clearok.c

all: mk/getcchar.d
mk/getcchar.d: src/curses/getcchar.c
	sh mk/deps.sh src/curses/getcchar.c

all: mk/LINES.d
mk/LINES.d: src/curses/LINES.c
	sh mk/deps.sh src/curses/LINES.c

all: mk/chgat.d
mk/chgat.d: src/curses/chgat.c
	sh mk/deps.sh src/curses/chgat.c

all: mk/keypad.d
mk/keypad.d: src/curses/keypad.c
	sh mk/deps.sh src/curses/keypad.c

all: mk/addnstr.d
mk/addnstr.d: src/curses/addnstr.c
	sh mk/deps.sh src/curses/addnstr.c

all: mk/nonl.d
mk/nonl.d: src/curses/nonl.c
	sh mk/deps.sh src/curses/nonl.c

all: mk/killwchar.d
mk/killwchar.d: src/curses/killwchar.c
	sh mk/deps.sh src/curses/killwchar.c

all: mk/inchstr.d
mk/inchstr.d: src/curses/inchstr.c
	sh mk/deps.sh src/curses/inchstr.c

all: mk/box.d
mk/box.d: src/curses/box.c
	sh mk/deps.sh src/curses/box.c

all: mk/curs_set.d
mk/curs_set.d: src/curses/curs_set.c
	sh mk/deps.sh src/curses/curs_set.c

all: mk/ins_nwstr.d
mk/ins_nwstr.d: src/curses/ins_nwstr.c
	sh mk/deps.sh src/curses/ins_nwstr.c

all: mk/getch.d
mk/getch.d: src/curses/getch.c
	sh mk/deps.sh src/curses/getch.c

all: mk/instr.d
mk/instr.d: src/curses/instr.c
	sh mk/deps.sh src/curses/instr.c

all: mk/qiflush.d
mk/qiflush.d: src/curses/qiflush.c
	sh mk/deps.sh src/curses/qiflush.c

all: mk/getn_wstr.d
mk/getn_wstr.d: src/curses/getn_wstr.c
	sh mk/deps.sh src/curses/getn_wstr.c

all: mk/wtouchln.d
mk/wtouchln.d: src/curses/wtouchln.c
	sh mk/deps.sh src/curses/wtouchln.c

all: mk/resetty.d
mk/resetty.d: src/curses/resetty.c
	sh mk/deps.sh src/curses/resetty.c

all: mk/innstr.d
mk/innstr.d: src/curses/innstr.c
	sh mk/deps.sh src/curses/innstr.c

all: mk/getnstr.d
mk/getnstr.d: src/curses/getnstr.c
	sh mk/deps.sh src/curses/getnstr.c

all: mk/syncok.d
mk/syncok.d: src/curses/syncok.c
	sh mk/deps.sh src/curses/syncok.c

all: mk/setscrreg.d
mk/setscrreg.d: src/curses/setscrreg.c
	sh mk/deps.sh src/curses/setscrreg.c

all: mk/pair_content.d
mk/pair_content.d: src/curses/pair_content.c
	sh mk/deps.sh src/curses/pair_content.c

all: mk/nl.d
mk/nl.d: src/curses/nl.c
	sh mk/deps.sh src/curses/nl.c

all: mk/slk_attr_set.d
mk/slk_attr_set.d: src/curses/slk_attr_set.c
	sh mk/deps.sh src/curses/slk_attr_set.c

all: mk/slk_wset.d
mk/slk_wset.d: src/curses/slk_wset.c
	sh mk/deps.sh src/curses/slk_wset.c

all: mk/mvwin.d
mk/mvwin.d: src/curses/mvwin.c
	sh mk/deps.sh src/curses/mvwin.c

all: mk/wcstoimax.d
mk/wcstoimax.d: src/inttypes/wcstoimax.c
	sh mk/deps.sh src/inttypes/wcstoimax.c

all: mk/imaxdiv.d
mk/imaxdiv.d: src/inttypes/imaxdiv.c
	sh mk/deps.sh src/inttypes/imaxdiv.c

all: mk/wcstoumax.d
mk/wcstoumax.d: src/inttypes/wcstoumax.c
	sh mk/deps.sh src/inttypes/wcstoumax.c

all: mk/strtoumax.d
mk/strtoumax.d: src/inttypes/strtoumax.c
	sh mk/deps.sh src/inttypes/strtoumax.c

all: mk/imaxabs.d
mk/imaxabs.d: src/inttypes/imaxabs.c
	sh mk/deps.sh src/inttypes/imaxabs.c

all: mk/strtoimax.d
mk/strtoimax.d: src/inttypes/strtoimax.c
	sh mk/deps.sh src/inttypes/strtoimax.c

all: mk/localeconv.d
mk/localeconv.d: src/locale/localeconv.c
	sh mk/deps.sh src/locale/localeconv.c

all: mk/__get_locale.d
mk/__get_locale.d: src/locale/__get_locale.c
	sh mk/deps.sh src/locale/__get_locale.c

all: mk/__load_locale.d
mk/__load_locale.d: src/locale/__load_locale.c
	sh mk/deps.sh src/locale/__load_locale.c

all: mk/setlocale.d
mk/setlocale.d: src/locale/setlocale.c
	sh mk/deps.sh src/locale/setlocale.c

all: mk/poll.d
mk/poll.d: src/poll/poll.c
	sh mk/deps.sh src/poll/poll.c

all: mk/y0.d
mk/y0.d: src/math/y0.c
	sh mk/deps.sh src/math/y0.c

all: mk/asin.d
mk/asin.d: src/math/asin.c
	sh mk/deps.sh src/math/asin.c

all: mk/cosh.d
mk/cosh.d: src/math/cosh.c
	sh mk/deps.sh src/math/cosh.c

all: mk/scalbn.d
mk/scalbn.d: src/math/scalbn.c
	sh mk/deps.sh src/math/scalbn.c

all: mk/asinh.d
mk/asinh.d: src/math/asinh.c
	sh mk/deps.sh src/math/asinh.c

all: mk/ilogb.d
mk/ilogb.d: src/math/ilogb.c
	sh mk/deps.sh src/math/ilogb.c

all: mk/llround.d
mk/llround.d: src/math/llround.c
	sh mk/deps.sh src/math/llround.c

all: mk/j1.d
mk/j1.d: src/math/j1.c
	sh mk/deps.sh src/math/j1.c

all: mk/fabs.d
mk/fabs.d: src/math/fabs.c
	sh mk/deps.sh src/math/fabs.c

all: mk/frexp.d
mk/frexp.d: src/math/frexp.c
	sh mk/deps.sh src/math/frexp.c

all: mk/nearbyint.d
mk/nearbyint.d: src/math/nearbyint.c
	sh mk/deps.sh src/math/nearbyint.c

all: mk/y1.d
mk/y1.d: src/math/y1.c
	sh mk/deps.sh src/math/y1.c

all: mk/fmax.d
mk/fmax.d: src/math/fmax.c
	sh mk/deps.sh src/math/fmax.c

all: mk/nextafter.d
mk/nextafter.d: src/math/nextafter.c
	sh mk/deps.sh src/math/nextafter.c

all: mk/scalb.d
mk/scalb.d: src/math/scalb.c
	sh mk/deps.sh src/math/scalb.c

all: mk/remquo.d
mk/remquo.d: src/math/remquo.c
	sh mk/deps.sh src/math/remquo.c

all: mk/gamma.d
mk/gamma.d: src/math/gamma.c
	sh mk/deps.sh src/math/gamma.c

all: mk/sin.d
mk/sin.d: src/math/sin.c
	sh mk/deps.sh src/math/sin.c

all: mk/exp.d
mk/exp.d: src/math/exp.c
	sh mk/deps.sh src/math/exp.c

all: mk/erfc.d
mk/erfc.d: src/math/erfc.c
	sh mk/deps.sh src/math/erfc.c

all: mk/yn.d
mk/yn.d: src/math/yn.c
	sh mk/deps.sh src/math/yn.c

all: mk/log2.d
mk/log2.d: src/math/log2.c
	sh mk/deps.sh src/math/log2.c

all: mk/round.d
mk/round.d: src/math/round.c
	sh mk/deps.sh src/math/round.c

all: mk/fdim.d
mk/fdim.d: src/math/fdim.c
	sh mk/deps.sh src/math/fdim.c

all: mk/modf.d
mk/modf.d: src/math/modf.c
	sh mk/deps.sh src/math/modf.c

all: mk/j0.d
mk/j0.d: src/math/j0.c
	sh mk/deps.sh src/math/j0.c

all: mk/exp2.d
mk/exp2.d: src/math/exp2.c
	sh mk/deps.sh src/math/exp2.c

all: mk/atan.d
mk/atan.d: src/math/atan.c
	sh mk/deps.sh src/math/atan.c

all: mk/acosh.d
mk/acosh.d: src/math/acosh.c
	sh mk/deps.sh src/math/acosh.c

all: mk/scalbln.d
mk/scalbln.d: src/math/scalbln.c
	sh mk/deps.sh src/math/scalbln.c

all: mk/lround.d
mk/lround.d: src/math/lround.c
	sh mk/deps.sh src/math/lround.c

all: mk/pow.d
mk/pow.d: src/math/pow.c
	sh mk/deps.sh src/math/pow.c

all: mk/lgamma.d
mk/lgamma.d: src/math/lgamma.c
	sh mk/deps.sh src/math/lgamma.c

all: mk/tanh.d
mk/tanh.d: src/math/tanh.c
	sh mk/deps.sh src/math/tanh.c

all: mk/llrint.d
mk/llrint.d: src/math/llrint.c
	sh mk/deps.sh src/math/llrint.c

all: mk/hypot.d
mk/hypot.d: src/math/hypot.c
	sh mk/deps.sh src/math/hypot.c

all: mk/acos.d
mk/acos.d: src/math/acos.c
	sh mk/deps.sh src/math/acos.c

all: mk/jn.d
mk/jn.d: src/math/jn.c
	sh mk/deps.sh src/math/jn.c

all: mk/rint.d
mk/rint.d: src/math/rint.c
	sh mk/deps.sh src/math/rint.c

all: mk/__fpclassify.d
mk/__fpclassify.d: src/math/__fpclassify.c
	sh mk/deps.sh src/math/__fpclassify.c

all: mk/tgamma.d
mk/tgamma.d: src/math/tgamma.c
	sh mk/deps.sh src/math/tgamma.c

all: mk/signgam.d
mk/signgam.d: src/math/signgam.c
	sh mk/deps.sh src/math/signgam.c

all: mk/floor.d
mk/floor.d: src/math/floor.c
	sh mk/deps.sh src/math/floor.c

all: mk/fmod.d
mk/fmod.d: src/math/fmod.c
	sh mk/deps.sh src/math/fmod.c

all: mk/nexttoward.d
mk/nexttoward.d: src/math/nexttoward.c
	sh mk/deps.sh src/math/nexttoward.c

all: mk/atan2.d
mk/atan2.d: src/math/atan2.c
	sh mk/deps.sh src/math/atan2.c

all: mk/copysign.d
mk/copysign.d: src/math/copysign.c
	sh mk/deps.sh src/math/copysign.c

all: mk/logb.d
mk/logb.d: src/math/logb.c
	sh mk/deps.sh src/math/logb.c

all: mk/tan.d
mk/tan.d: src/math/tan.c
	sh mk/deps.sh src/math/tan.c

all: mk/sqrt.d
mk/sqrt.d: src/math/sqrt.c
	sh mk/deps.sh src/math/sqrt.c

all: mk/log10.d
mk/log10.d: src/math/log10.c
	sh mk/deps.sh src/math/log10.c

all: mk/cos.d
mk/cos.d: src/math/cos.c
	sh mk/deps.sh src/math/cos.c

all: mk/fmin.d
mk/fmin.d: src/math/fmin.c
	sh mk/deps.sh src/math/fmin.c

all: mk/expm1.d
mk/expm1.d: src/math/expm1.c
	sh mk/deps.sh src/math/expm1.c

all: mk/nan.d
mk/nan.d: src/math/nan.c
	sh mk/deps.sh src/math/nan.c

all: mk/erf.d
mk/erf.d: src/math/erf.c
	sh mk/deps.sh src/math/erf.c

all: mk/trunc.d
mk/trunc.d: src/math/trunc.c
	sh mk/deps.sh src/math/trunc.c

all: mk/ldexp.d
mk/ldexp.d: src/math/ldexp.c
	sh mk/deps.sh src/math/ldexp.c

all: mk/log1p.d
mk/log1p.d: src/math/log1p.c
	sh mk/deps.sh src/math/log1p.c

all: mk/atanh.d
mk/atanh.d: src/math/atanh.c
	sh mk/deps.sh src/math/atanh.c

all: mk/lrint.d
mk/lrint.d: src/math/lrint.c
	sh mk/deps.sh src/math/lrint.c

all: mk/ceil.d
mk/ceil.d: src/math/ceil.c
	sh mk/deps.sh src/math/ceil.c

all: mk/remainder.d
mk/remainder.d: src/math/remainder.c
	sh mk/deps.sh src/math/remainder.c

all: mk/fma.d
mk/fma.d: src/math/fma.c
	sh mk/deps.sh src/math/fma.c

all: mk/log.d
mk/log.d: src/math/log.c
	sh mk/deps.sh src/math/log.c

all: mk/cbrt.d
mk/cbrt.d: src/math/cbrt.c
	sh mk/deps.sh src/math/cbrt.c

all: mk/sinh.d
mk/sinh.d: src/math/sinh.c
	sh mk/deps.sh src/math/sinh.c

all: mk/iswspace.d
mk/iswspace.d: src/wctype/iswspace.c
	sh mk/deps.sh src/wctype/iswspace.c

all: mk/iswpunct.d
mk/iswpunct.d: src/wctype/iswpunct.c
	sh mk/deps.sh src/wctype/iswpunct.c

all: mk/iswctype.d
mk/iswctype.d: src/wctype/iswctype.c
	sh mk/deps.sh src/wctype/iswctype.c

all: mk/iswalpha.d
mk/iswalpha.d: src/wctype/iswalpha.c
	sh mk/deps.sh src/wctype/iswalpha.c

all: mk/iswxdigit.d
mk/iswxdigit.d: src/wctype/iswxdigit.c
	sh mk/deps.sh src/wctype/iswxdigit.c

all: mk/iswcntrl.d
mk/iswcntrl.d: src/wctype/iswcntrl.c
	sh mk/deps.sh src/wctype/iswcntrl.c

all: mk/iswgraph.d
mk/iswgraph.d: src/wctype/iswgraph.c
	sh mk/deps.sh src/wctype/iswgraph.c

all: mk/iswblank.d
mk/iswblank.d: src/wctype/iswblank.c
	sh mk/deps.sh src/wctype/iswblank.c

all: mk/wctype.d
mk/wctype.d: src/wctype/wctype.c
	sh mk/deps.sh src/wctype/wctype.c

all: mk/towctrans.d
mk/towctrans.d: src/wctype/towctrans.c
	sh mk/deps.sh src/wctype/towctrans.c

all: mk/towlower.d
mk/towlower.d: src/wctype/towlower.c
	sh mk/deps.sh src/wctype/towlower.c

all: mk/iswlower.d
mk/iswlower.d: src/wctype/iswlower.c
	sh mk/deps.sh src/wctype/iswlower.c

all: mk/iswprint.d
mk/iswprint.d: src/wctype/iswprint.c
	sh mk/deps.sh src/wctype/iswprint.c

all: mk/towupper.d
mk/towupper.d: src/wctype/towupper.c
	sh mk/deps.sh src/wctype/towupper.c

all: mk/wctrans.d
mk/wctrans.d: src/wctype/wctrans.c
	sh mk/deps.sh src/wctype/wctrans.c

all: mk/iswupper.d
mk/iswupper.d: src/wctype/iswupper.c
	sh mk/deps.sh src/wctype/iswupper.c

all: mk/iswdigit.d
mk/iswdigit.d: src/wctype/iswdigit.c
	sh mk/deps.sh src/wctype/iswdigit.c

all: mk/iswalnum.d
mk/iswalnum.d: src/wctype/iswalnum.c
	sh mk/deps.sh src/wctype/iswalnum.c

all: mk/va_list.d
mk/va_list.d: src/varargs/va_list.c
	sh mk/deps.sh src/varargs/va_list.c

all: mk/va_alist.d
mk/va_alist.d: src/varargs/va_alist.c
	sh mk/deps.sh src/varargs/va_alist.c

all: mk/va_arg.d
mk/va_arg.d: src/varargs/va_arg.c
	sh mk/deps.sh src/varargs/va_arg.c

all: mk/va_dcl.d
mk/va_dcl.d: src/varargs/va_dcl.c
	sh mk/deps.sh src/varargs/va_dcl.c

all: mk/va_start.d
mk/va_start.d: src/varargs/va_start.c
	sh mk/deps.sh src/varargs/va_start.c

all: mk/va_end.d
mk/va_end.d: src/varargs/va_end.c
	sh mk/deps.sh src/varargs/va_end.c

all: mk/aio_return.d
mk/aio_return.d: src/aio/aio_return.c
	sh mk/deps.sh src/aio/aio_return.c

all: mk/aio_cancel.d
mk/aio_cancel.d: src/aio/aio_cancel.c
	sh mk/deps.sh src/aio/aio_cancel.c

all: mk/aio_error.d
mk/aio_error.d: src/aio/aio_error.c
	sh mk/deps.sh src/aio/aio_error.c

all: mk/lio_listio.d
mk/lio_listio.d: src/aio/lio_listio.c
	sh mk/deps.sh src/aio/lio_listio.c

all: mk/aio_fsync.d
mk/aio_fsync.d: src/aio/aio_fsync.c
	sh mk/deps.sh src/aio/aio_fsync.c

all: mk/aio_write.d
mk/aio_write.d: src/aio/aio_write.c
	sh mk/deps.sh src/aio/aio_write.c

all: mk/aio_read.d
mk/aio_read.d: src/aio/aio_read.c
	sh mk/deps.sh src/aio/aio_read.c

all: mk/aio_suspend.d
mk/aio_suspend.d: src/aio/aio_suspend.c
	sh mk/deps.sh src/aio/aio_suspend.c

all: mk/glob.d
mk/glob.d: src/glob/glob.c
	sh mk/deps.sh src/glob/glob.c

all: mk/globfree.d
mk/globfree.d: src/glob/globfree.c
	sh mk/deps.sh src/glob/globfree.c

all: mk/nftw.d
mk/nftw.d: src/ftw/nftw.c
	sh mk/deps.sh src/ftw/nftw.c

all: mk/ftw.d
mk/ftw.d: src/ftw/ftw.c
	sh mk/deps.sh src/ftw/ftw.c

all: mk/__main.d
mk/__main.d: src/__main.c
	sh mk/deps.sh src/__main.c

all: mk/loc1.d
mk/loc1.d: src/regexp/loc1.c
	sh mk/deps.sh src/regexp/loc1.c

all: mk/compile.d
mk/compile.d: src/regexp/compile.c
	sh mk/deps.sh src/regexp/compile.c

all: mk/step.d
mk/step.d: src/regexp/step.c
	sh mk/deps.sh src/regexp/step.c

all: mk/locs.d
mk/locs.d: src/regexp/locs.c
	sh mk/deps.sh src/regexp/locs.c

all: mk/loc2.d
mk/loc2.d: src/regexp/loc2.c
	sh mk/deps.sh src/regexp/loc2.c

all: mk/advance.d
mk/advance.d: src/regexp/advance.c
	sh mk/deps.sh src/regexp/advance.c

all: mk/thrd_equal.d
mk/thrd_equal.d: src/threads/thrd_equal.c
	sh mk/deps.sh src/threads/thrd_equal.c

all: mk/thrd_create.d
mk/thrd_create.d: src/threads/thrd_create.c
	sh mk/deps.sh src/threads/thrd_create.c

all: mk/thrd_sleep.d
mk/thrd_sleep.d: src/threads/thrd_sleep.c
	sh mk/deps.sh src/threads/thrd_sleep.c

all: mk/tss_delete.d
mk/tss_delete.d: src/threads/tss_delete.c
	sh mk/deps.sh src/threads/tss_delete.c

all: mk/tss_set.d
mk/tss_set.d: src/threads/tss_set.c
	sh mk/deps.sh src/threads/tss_set.c

all: mk/cnd_timedwait.d
mk/cnd_timedwait.d: src/threads/cnd_timedwait.c
	sh mk/deps.sh src/threads/cnd_timedwait.c

all: mk/mtx_timedlock.d
mk/mtx_timedlock.d: src/threads/mtx_timedlock.c
	sh mk/deps.sh src/threads/mtx_timedlock.c

all: mk/mtx_unlock.d
mk/mtx_unlock.d: src/threads/mtx_unlock.c
	sh mk/deps.sh src/threads/mtx_unlock.c

all: mk/thrd_current.d
mk/thrd_current.d: src/threads/thrd_current.c
	sh mk/deps.sh src/threads/thrd_current.c

all: mk/mtx_trylock.d
mk/mtx_trylock.d: src/threads/mtx_trylock.c
	sh mk/deps.sh src/threads/mtx_trylock.c

all: mk/_enums.d
mk/_enums.d: src/threads/_enums.c
	sh mk/deps.sh src/threads/_enums.c

all: mk/cnd_destroy.d
mk/cnd_destroy.d: src/threads/cnd_destroy.c
	sh mk/deps.sh src/threads/cnd_destroy.c

all: mk/thrd_exit.d
mk/thrd_exit.d: src/threads/thrd_exit.c
	sh mk/deps.sh src/threads/thrd_exit.c

all: mk/thrd_join.d
mk/thrd_join.d: src/threads/thrd_join.c
	sh mk/deps.sh src/threads/thrd_join.c

all: mk/tss_create.d
mk/tss_create.d: src/threads/tss_create.c
	sh mk/deps.sh src/threads/tss_create.c

all: mk/tss_get.d
mk/tss_get.d: src/threads/tss_get.c
	sh mk/deps.sh src/threads/tss_get.c

all: mk/thrd_yield.d
mk/thrd_yield.d: src/threads/thrd_yield.c
	sh mk/deps.sh src/threads/thrd_yield.c

all: mk/call_once.d
mk/call_once.d: src/threads/call_once.c
	sh mk/deps.sh src/threads/call_once.c

all: mk/mtx_init.d
mk/mtx_init.d: src/threads/mtx_init.c
	sh mk/deps.sh src/threads/mtx_init.c

all: mk/cnd_signal.d
mk/cnd_signal.d: src/threads/cnd_signal.c
	sh mk/deps.sh src/threads/cnd_signal.c

all: mk/mtx_lock.d
mk/mtx_lock.d: src/threads/mtx_lock.c
	sh mk/deps.sh src/threads/mtx_lock.c

all: mk/cnd_broadcast.d
mk/cnd_broadcast.d: src/threads/cnd_broadcast.c
	sh mk/deps.sh src/threads/cnd_broadcast.c

all: mk/cnd_init.d
mk/cnd_init.d: src/threads/cnd_init.c
	sh mk/deps.sh src/threads/cnd_init.c

all: mk/tss_dtor_t.d
mk/tss_dtor_t.d: src/threads/tss_dtor_t.c
	sh mk/deps.sh src/threads/tss_dtor_t.c

all: mk/mtx_destroy.d
mk/mtx_destroy.d: src/threads/mtx_destroy.c
	sh mk/deps.sh src/threads/mtx_destroy.c

all: mk/cnd_wait.d
mk/cnd_wait.d: src/threads/cnd_wait.c
	sh mk/deps.sh src/threads/cnd_wait.c

all: mk/thrd_detach.d
mk/thrd_detach.d: src/threads/thrd_detach.c
	sh mk/deps.sh src/threads/thrd_detach.c

all: mk/thrd_start_t.d
mk/thrd_start_t.d: src/threads/thrd_start_t.c
	sh mk/deps.sh src/threads/thrd_start_t.c

all: mk/gcvt.d
mk/gcvt.d: src/stdlib/gcvt.c
	sh mk/deps.sh src/stdlib/gcvt.c

all: mk/exit.d
mk/exit.d: src/stdlib/exit.c
	sh mk/deps.sh src/stdlib/exit.c

all: mk/random.d
mk/random.d: src/stdlib/random.c
	sh mk/deps.sh src/stdlib/random.c

all: mk/labs.d
mk/labs.d: src/stdlib/labs.c
	sh mk/deps.sh src/stdlib/labs.c

all: mk/strtoll.d
mk/strtoll.d: src/stdlib/strtoll.c
	sh mk/deps.sh src/stdlib/strtoll.c

all: mk/fcvt.d
mk/fcvt.d: src/stdlib/fcvt.c
	sh mk/deps.sh src/stdlib/fcvt.c

all: mk/ptsname.d
mk/ptsname.d: src/stdlib/ptsname.c
	sh mk/deps.sh src/stdlib/ptsname.c

all: mk/qsort.d
mk/qsort.d: src/stdlib/qsort.c
	sh mk/deps.sh src/stdlib/qsort.c

all: mk/setkey.d
mk/setkey.d: src/stdlib/setkey.c
	sh mk/deps.sh src/stdlib/setkey.c

all: mk/setstate.d
mk/setstate.d: src/stdlib/setstate.c
	sh mk/deps.sh src/stdlib/setstate.c

all: mk/wctomb.d
mk/wctomb.d: src/stdlib/wctomb.c
	sh mk/deps.sh src/stdlib/wctomb.c

all: mk/free.d
mk/free.d: src/stdlib/free.c
	sh mk/deps.sh src/stdlib/free.c

all: mk/mblen.d
mk/mblen.d: src/stdlib/mblen.c
	sh mk/deps.sh src/stdlib/mblen.c

all: mk/lcong48.d
mk/lcong48.d: src/stdlib/lcong48.c
	sh mk/deps.sh src/stdlib/lcong48.c

all: mk/mrand48.d
mk/mrand48.d: src/stdlib/mrand48.c
	sh mk/deps.sh src/stdlib/mrand48.c

all: mk/strtold.d
mk/strtold.d: src/stdlib/strtold.c
	sh mk/deps.sh src/stdlib/strtold.c

all: mk/system.d
mk/system.d: src/stdlib/system.c
	sh mk/deps.sh src/stdlib/system.c

all: mk/abs.d
mk/abs.d: src/stdlib/abs.c
	sh mk/deps.sh src/stdlib/abs.c

all: mk/srandom.d
mk/srandom.d: src/stdlib/srandom.c
	sh mk/deps.sh src/stdlib/srandom.c

all: mk/lldiv.d
mk/lldiv.d: src/stdlib/lldiv.c
	sh mk/deps.sh src/stdlib/lldiv.c

all: mk/ecvt.d
mk/ecvt.d: src/stdlib/ecvt.c
	sh mk/deps.sh src/stdlib/ecvt.c

all: mk/mktemp.d
mk/mktemp.d: src/stdlib/mktemp.c
	sh mk/deps.sh src/stdlib/mktemp.c

all: mk/bsearch.d
mk/bsearch.d: src/stdlib/bsearch.c
	sh mk/deps.sh src/stdlib/bsearch.c

all: mk/strtof.d
mk/strtof.d: src/stdlib/strtof.c
	sh mk/deps.sh src/stdlib/strtof.c

all: mk/srand48.d
mk/srand48.d: src/stdlib/srand48.c
	sh mk/deps.sh src/stdlib/srand48.c

all: mk/putenv.d
mk/putenv.d: src/stdlib/putenv.c
	sh mk/deps.sh src/stdlib/putenv.c

all: mk/nrand48.d
mk/nrand48.d: src/stdlib/nrand48.c
	sh mk/deps.sh src/stdlib/nrand48.c

all: mk/malloc.d
mk/malloc.d: src/stdlib/malloc.c
	sh mk/deps.sh src/stdlib/malloc.c

all: mk/initstate.d
mk/initstate.d: src/stdlib/initstate.c
	sh mk/deps.sh src/stdlib/initstate.c

all: mk/getenv.d
mk/getenv.d: src/stdlib/getenv.c
	sh mk/deps.sh src/stdlib/getenv.c

all: mk/calloc.d
mk/calloc.d: src/stdlib/calloc.c
	sh mk/deps.sh src/stdlib/calloc.c

all: mk/mbstowcs.d
mk/mbstowcs.d: src/stdlib/mbstowcs.c
	sh mk/deps.sh src/stdlib/mbstowcs.c

all: mk/_Exit.d
mk/_Exit.d: src/stdlib/_Exit.c
	sh mk/deps.sh src/stdlib/_Exit.c

all: mk/__stdlib.d
mk/__stdlib.d: src/stdlib/__stdlib.c
	sh mk/deps.sh src/stdlib/__stdlib.c

all: mk/jrand48.d
mk/jrand48.d: src/stdlib/jrand48.c
	sh mk/deps.sh src/stdlib/jrand48.c

all: mk/erand48.d
mk/erand48.d: src/stdlib/erand48.c
	sh mk/deps.sh src/stdlib/erand48.c

all: mk/ttyslot.d
mk/ttyslot.d: src/stdlib/ttyslot.c
	sh mk/deps.sh src/stdlib/ttyslot.c

all: mk/getsubopt.d
mk/getsubopt.d: src/stdlib/getsubopt.c
	sh mk/deps.sh src/stdlib/getsubopt.c

all: mk/abort.d
mk/abort.d: src/stdlib/abort.c
	sh mk/deps.sh src/stdlib/abort.c

all: mk/strtoul.d
mk/strtoul.d: src/stdlib/strtoul.c
	sh mk/deps.sh src/stdlib/strtoul.c

all: mk/atoi.d
mk/atoi.d: src/stdlib/atoi.c
	sh mk/deps.sh src/stdlib/atoi.c

all: mk/div.d
mk/div.d: src/stdlib/div.c
	sh mk/deps.sh src/stdlib/div.c

all: mk/strtoull.d
mk/strtoull.d: src/stdlib/strtoull.c
	sh mk/deps.sh src/stdlib/strtoull.c

all: mk/mkstemp.d
mk/mkstemp.d: src/stdlib/mkstemp.c
	sh mk/deps.sh src/stdlib/mkstemp.c

all: mk/drand48.d
mk/drand48.d: src/stdlib/drand48.c
	sh mk/deps.sh src/stdlib/drand48.c

all: mk/wcstombs.d
mk/wcstombs.d: src/stdlib/wcstombs.c
	sh mk/deps.sh src/stdlib/wcstombs.c

all: mk/llabs.d
mk/llabs.d: src/stdlib/llabs.c
	sh mk/deps.sh src/stdlib/llabs.c

all: mk/realloc.d
mk/realloc.d: src/stdlib/realloc.c
	sh mk/deps.sh src/stdlib/realloc.c

all: mk/rand.d
mk/rand.d: src/stdlib/rand.c
	sh mk/deps.sh src/stdlib/rand.c

all: mk/lrand48.d
mk/lrand48.d: src/stdlib/lrand48.c
	sh mk/deps.sh src/stdlib/lrand48.c

all: mk/unlockpt.d
mk/unlockpt.d: src/stdlib/unlockpt.c
	sh mk/deps.sh src/stdlib/unlockpt.c

all: mk/strtod.d
mk/strtod.d: src/stdlib/strtod.c
	sh mk/deps.sh src/stdlib/strtod.c

all: mk/a64l.d
mk/a64l.d: src/stdlib/a64l.c
	sh mk/deps.sh src/stdlib/a64l.c

all: mk/mbtowc.d
mk/mbtowc.d: src/stdlib/mbtowc.c
	sh mk/deps.sh src/stdlib/mbtowc.c

all: mk/ldiv.d
mk/ldiv.d: src/stdlib/ldiv.c
	sh mk/deps.sh src/stdlib/ldiv.c

all: mk/realpath.d
mk/realpath.d: src/stdlib/realpath.c
	sh mk/deps.sh src/stdlib/realpath.c

all: mk/atoll.d
mk/atoll.d: src/stdlib/atoll.c
	sh mk/deps.sh src/stdlib/atoll.c

all: mk/valloc.d
mk/valloc.d: src/stdlib/valloc.c
	sh mk/deps.sh src/stdlib/valloc.c

all: mk/grantpt.d
mk/grantpt.d: src/stdlib/grantpt.c
	sh mk/deps.sh src/stdlib/grantpt.c

all: mk/srand.d
mk/srand.d: src/stdlib/srand.c
	sh mk/deps.sh src/stdlib/srand.c

all: mk/strtol.d
mk/strtol.d: src/stdlib/strtol.c
	sh mk/deps.sh src/stdlib/strtol.c

all: mk/atexit.d
mk/atexit.d: src/stdlib/atexit.c
	sh mk/deps.sh src/stdlib/atexit.c

all: mk/seed48.d
mk/seed48.d: src/stdlib/seed48.c
	sh mk/deps.sh src/stdlib/seed48.c

all: mk/atof.d
mk/atof.d: src/stdlib/atof.c
	sh mk/deps.sh src/stdlib/atof.c

all: mk/atol.d
mk/atol.d: src/stdlib/atol.c
	sh mk/deps.sh src/stdlib/atol.c

all: mk/l64a.d
mk/l64a.d: src/stdlib/l64a.c
	sh mk/deps.sh src/stdlib/l64a.c

all: mk/regcmp.d
mk/regcmp.d: src/libgen/regcmp.c
	sh mk/deps.sh src/libgen/regcmp.c

all: mk/basename.d
mk/basename.d: src/libgen/basename.c
	sh mk/deps.sh src/libgen/basename.c

all: mk/dirname.d
mk/dirname.d: src/libgen/dirname.c
	sh mk/deps.sh src/libgen/dirname.c

all: mk/regex.d
mk/regex.d: src/libgen/regex.c
	sh mk/deps.sh src/libgen/regex.c

all: mk/__loc1.d
mk/__loc1.d: src/libgen/__loc1.c
	sh mk/deps.sh src/libgen/__loc1.c

all: mk/raise.d
mk/raise.d: src/signal/raise.c
	sh mk/deps.sh src/signal/raise.c

all: mk/sigismember.d
mk/sigismember.d: src/signal/sigismember.c
	sh mk/deps.sh src/signal/sigismember.c

all: mk/siginterrupt.d
mk/siginterrupt.d: src/signal/siginterrupt.c
	sh mk/deps.sh src/signal/siginterrupt.c

all: mk/signal.d
mk/signal.d: src/signal/signal.c
	sh mk/deps.sh src/signal/signal.c

all: mk/kill.d
mk/kill.d: src/signal/kill.c
	sh mk/deps.sh src/signal/kill.c

all: mk/sighold.d
mk/sighold.d: src/signal/sighold.c
	sh mk/deps.sh src/signal/sighold.c

all: mk/sigfillset.d
mk/sigfillset.d: src/signal/sigfillset.c
	sh mk/deps.sh src/signal/sigfillset.c

all: mk/sigqueue.d
mk/sigqueue.d: src/signal/sigqueue.c
	sh mk/deps.sh src/signal/sigqueue.c

all: mk/sigignore.d
mk/sigignore.d: src/signal/sigignore.c
	sh mk/deps.sh src/signal/sigignore.c

all: mk/sigset.d
mk/sigset.d: src/signal/sigset.c
	sh mk/deps.sh src/signal/sigset.c

all: mk/bsd_signal.d
mk/bsd_signal.d: src/signal/bsd_signal.c
	sh mk/deps.sh src/signal/bsd_signal.c

all: mk/sigtimedwait.d
mk/sigtimedwait.d: src/signal/sigtimedwait.c
	sh mk/deps.sh src/signal/sigtimedwait.c

all: mk/sigwaitinfo.d
mk/sigwaitinfo.d: src/signal/sigwaitinfo.c
	sh mk/deps.sh src/signal/sigwaitinfo.c

all: mk/sigaltstack.d
mk/sigaltstack.d: src/signal/sigaltstack.c
	sh mk/deps.sh src/signal/sigaltstack.c

all: mk/sigmask.d
mk/sigmask.d: src/signal/sigmask.c
	sh mk/deps.sh src/signal/sigmask.c

all: mk/sigemptyset.d
mk/sigemptyset.d: src/signal/sigemptyset.c
	sh mk/deps.sh src/signal/sigemptyset.c

all: mk/sigaddset.d
mk/sigaddset.d: src/signal/sigaddset.c
	sh mk/deps.sh src/signal/sigaddset.c

all: mk/sigpause.d
mk/sigpause.d: src/signal/sigpause.c
	sh mk/deps.sh src/signal/sigpause.c

all: mk/sigsuspend.d
mk/sigsuspend.d: src/signal/sigsuspend.c
	sh mk/deps.sh src/signal/sigsuspend.c

all: mk/sigpending.d
mk/sigpending.d: src/signal/sigpending.c
	sh mk/deps.sh src/signal/sigpending.c

all: mk/sigstack.d
mk/sigstack.d: src/signal/sigstack.c
	sh mk/deps.sh src/signal/sigstack.c

all: mk/sigdelset.d
mk/sigdelset.d: src/signal/sigdelset.c
	sh mk/deps.sh src/signal/sigdelset.c

all: mk/sigrelse.d
mk/sigrelse.d: src/signal/sigrelse.c
	sh mk/deps.sh src/signal/sigrelse.c

all: mk/sigprocmask.d
mk/sigprocmask.d: src/signal/sigprocmask.c
	sh mk/deps.sh src/signal/sigprocmask.c

all: mk/sigaction.d
mk/sigaction.d: src/signal/sigaction.c
	sh mk/deps.sh src/signal/sigaction.c

all: mk/killpg.d
mk/killpg.d: src/signal/killpg.c
	sh mk/deps.sh src/signal/killpg.c

all: mk/__time.d
mk/__time.d: src/time/__time.c
	sh mk/deps.sh src/time/__time.c

all: mk/__scanf.d
mk/__scanf.d: src/stdio/__scanf.c
	sh mk/deps.sh src/stdio/__scanf.c

