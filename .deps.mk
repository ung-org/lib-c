.POSIX:
.SILENT:
default: all

include .config.mk

BASE_CFLAGS=-I$(INCDIR) -fno-builtin -nostdinc

libc.a($(OBJDIR)/_sys.$(ARCHITECTURE)-$(WORDSIZE).o): $(OBJDIR)/_sys.$(ARCHITECTURE)-$(WORDSIZE).o
$(OBJDIR)/_sys.$(ARCHITECTURE)-$(WORDSIZE).o: ./src/_sys.$(ARCHITECTURE)-$(WORDSIZE).s
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/_sys.$(ARCHITECTURE)-$(WORDSIZE).s -o $@
	 echo [AS] $@

libc.a($(OBJDIR)/__longjmp.$(ARCHITECTURE)-$(WORDSIZE).o): $(OBJDIR)/__longjmp.$(ARCHITECTURE)-$(WORDSIZE).o
$(OBJDIR)/__longjmp.$(ARCHITECTURE)-$(WORDSIZE).o: ./src/setjmp/__longjmp.$(ARCHITECTURE)-$(WORDSIZE).s
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/setjmp/__longjmp.$(ARCHITECTURE)-$(WORDSIZE).s -o $@
	 echo [AS] $@

libc.a($(OBJDIR)/__setjmp.$(ARCHITECTURE)-$(WORDSIZE).o): $(OBJDIR)/__setjmp.$(ARCHITECTURE)-$(WORDSIZE).o
$(OBJDIR)/__setjmp.$(ARCHITECTURE)-$(WORDSIZE).o: ./src/setjmp/__setjmp.$(ARCHITECTURE)-$(WORDSIZE).s
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/setjmp/__setjmp.$(ARCHITECTURE)-$(WORDSIZE).s -o $@
	 echo [AS] $@

libc.a(times.o): $(OBJDIR)/times.o
$(OBJDIR)/times.o: ./src/sys/times/times.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/sys/times/times.c -o $@
	echo [CC] $@
libc.a(setrlimit.o): $(OBJDIR)/setrlimit.o
$(OBJDIR)/setrlimit.o: ./src/sys/resource/setrlimit.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/sys/resource/setrlimit.c -o $@
	echo [CC] $@
libc.a(setpriority.o): $(OBJDIR)/setpriority.o
$(OBJDIR)/setpriority.o: ./src/sys/resource/setpriority.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/sys/resource/setpriority.c -o $@
	echo [CC] $@
libc.a(getpriority.o): $(OBJDIR)/getpriority.o
$(OBJDIR)/getpriority.o: ./src/sys/resource/getpriority.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/sys/resource/getpriority.c -o $@
	echo [CC] $@
libc.a(getrusage.o): $(OBJDIR)/getrusage.o
$(OBJDIR)/getrusage.o: ./src/sys/resource/getrusage.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/sys/resource/getrusage.c -o $@
	echo [CC] $@
libc.a(getrlimit.o): $(OBJDIR)/getrlimit.o
$(OBJDIR)/getrlimit.o: ./src/sys/resource/getrlimit.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/sys/resource/getrlimit.c -o $@
	echo [CC] $@
libc.a(shmctl.o): $(OBJDIR)/shmctl.o
$(OBJDIR)/shmctl.o: ./src/sys/shm/shmctl.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/sys/shm/shmctl.c -o $@
	echo [CC] $@
libc.a(shmget.o): $(OBJDIR)/shmget.o
$(OBJDIR)/shmget.o: ./src/sys/shm/shmget.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/sys/shm/shmget.c -o $@
	echo [CC] $@
libc.a(shmat.o): $(OBJDIR)/shmat.o
$(OBJDIR)/shmat.o: ./src/sys/shm/shmat.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/sys/shm/shmat.c -o $@
	echo [CC] $@
libc.a(shmdt.o): $(OBJDIR)/shmdt.o
$(OBJDIR)/shmdt.o: ./src/sys/shm/shmdt.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/sys/shm/shmdt.c -o $@
	echo [CC] $@
libc.a(ftok.o): $(OBJDIR)/ftok.o
$(OBJDIR)/ftok.o: ./src/sys/ipc/ftok.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/sys/ipc/ftok.c -o $@
	echo [CC] $@
libc.a(uname.o): $(OBJDIR)/uname.o
$(OBJDIR)/uname.o: ./src/sys/utsname/uname.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/sys/utsname/uname.c -o $@
	echo [CC] $@
libc.a(readv.o): $(OBJDIR)/readv.o
$(OBJDIR)/readv.o: ./src/sys/uio/readv.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/sys/uio/readv.c -o $@
	echo [CC] $@
libc.a(writev.o): $(OBJDIR)/writev.o
$(OBJDIR)/writev.o: ./src/sys/uio/writev.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/sys/uio/writev.c -o $@
	echo [CC] $@
libc.a(semget.o): $(OBJDIR)/semget.o
$(OBJDIR)/semget.o: ./src/sys/sem/semget.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/sys/sem/semget.c -o $@
	echo [CC] $@
libc.a(semop.o): $(OBJDIR)/semop.o
$(OBJDIR)/semop.o: ./src/sys/sem/semop.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/sys/sem/semop.c -o $@
	echo [CC] $@
libc.a(semctl.o): $(OBJDIR)/semctl.o
$(OBJDIR)/semctl.o: ./src/sys/sem/semctl.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/sys/sem/semctl.c -o $@
	echo [CC] $@
libc.a(wait.o): $(OBJDIR)/wait.o
$(OBJDIR)/wait.o: ./src/sys/wait/wait.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/sys/wait/wait.c -o $@
	echo [CC] $@
libc.a(wait3.o): $(OBJDIR)/wait3.o
$(OBJDIR)/wait3.o: ./src/sys/wait/wait3.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/sys/wait/wait3.c -o $@
	echo [CC] $@
libc.a(waitpid.o): $(OBJDIR)/waitpid.o
$(OBJDIR)/waitpid.o: ./src/sys/wait/waitpid.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/sys/wait/waitpid.c -o $@
	echo [CC] $@
libc.a(mmap.o): $(OBJDIR)/mmap.o
$(OBJDIR)/mmap.o: ./src/sys/mman/mmap.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/sys/mman/mmap.c -o $@
	echo [CC] $@
libc.a(munlock.o): $(OBJDIR)/munlock.o
$(OBJDIR)/munlock.o: ./src/sys/mman/munlock.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/sys/mman/munlock.c -o $@
	echo [CC] $@
libc.a(munlockall.o): $(OBJDIR)/munlockall.o
$(OBJDIR)/munlockall.o: ./src/sys/mman/munlockall.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/sys/mman/munlockall.c -o $@
	echo [CC] $@
libc.a(mprotect.o): $(OBJDIR)/mprotect.o
$(OBJDIR)/mprotect.o: ./src/sys/mman/mprotect.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/sys/mman/mprotect.c -o $@
	echo [CC] $@
libc.a(mlock.o): $(OBJDIR)/mlock.o
$(OBJDIR)/mlock.o: ./src/sys/mman/mlock.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/sys/mman/mlock.c -o $@
	echo [CC] $@
libc.a(msync.o): $(OBJDIR)/msync.o
$(OBJDIR)/msync.o: ./src/sys/mman/msync.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/sys/mman/msync.c -o $@
	echo [CC] $@
libc.a(mlockall.o): $(OBJDIR)/mlockall.o
$(OBJDIR)/mlockall.o: ./src/sys/mman/mlockall.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/sys/mman/mlockall.c -o $@
	echo [CC] $@
libc.a(munmap.o): $(OBJDIR)/munmap.o
$(OBJDIR)/munmap.o: ./src/sys/mman/munmap.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/sys/mman/munmap.c -o $@
	echo [CC] $@
libc.a(shm_open.o): $(OBJDIR)/shm_open.o
$(OBJDIR)/shm_open.o: ./src/sys/mman/shm_open.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/sys/mman/shm_open.c -o $@
	echo [CC] $@
libc.a(shm_unlink.o): $(OBJDIR)/shm_unlink.o
$(OBJDIR)/shm_unlink.o: ./src/sys/mman/shm_unlink.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/sys/mman/shm_unlink.c -o $@
	echo [CC] $@
libc.a(ftime.o): $(OBJDIR)/ftime.o
$(OBJDIR)/ftime.o: ./src/sys/timeb/ftime.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/sys/timeb/ftime.c -o $@
	echo [CC] $@
libc.a(msgrcv.o): $(OBJDIR)/msgrcv.o
$(OBJDIR)/msgrcv.o: ./src/sys/msg/msgrcv.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/sys/msg/msgrcv.c -o $@
	echo [CC] $@
libc.a(msgget.o): $(OBJDIR)/msgget.o
$(OBJDIR)/msgget.o: ./src/sys/msg/msgget.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/sys/msg/msgget.c -o $@
	echo [CC] $@
libc.a(msgctl.o): $(OBJDIR)/msgctl.o
$(OBJDIR)/msgctl.o: ./src/sys/msg/msgctl.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/sys/msg/msgctl.c -o $@
	echo [CC] $@
libc.a(msgsnd.o): $(OBJDIR)/msgsnd.o
$(OBJDIR)/msgsnd.o: ./src/sys/msg/msgsnd.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/sys/msg/msgsnd.c -o $@
	echo [CC] $@
libc.a(mknod.o): $(OBJDIR)/mknod.o
$(OBJDIR)/mknod.o: ./src/sys/stat/mknod.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/sys/stat/mknod.c -o $@
	echo [CC] $@
libc.a(umask.o): $(OBJDIR)/umask.o
$(OBJDIR)/umask.o: ./src/sys/stat/umask.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/sys/stat/umask.c -o $@
	echo [CC] $@
libc.a(fchmod.o): $(OBJDIR)/fchmod.o
$(OBJDIR)/fchmod.o: ./src/sys/stat/fchmod.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/sys/stat/fchmod.c -o $@
	echo [CC] $@
libc.a(stat.o): $(OBJDIR)/stat.o
$(OBJDIR)/stat.o: ./src/sys/stat/stat.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/sys/stat/stat.c -o $@
	echo [CC] $@
libc.a(mkfifo.o): $(OBJDIR)/mkfifo.o
$(OBJDIR)/mkfifo.o: ./src/sys/stat/mkfifo.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/sys/stat/mkfifo.c -o $@
	echo [CC] $@
libc.a(chmod.o): $(OBJDIR)/chmod.o
$(OBJDIR)/chmod.o: ./src/sys/stat/chmod.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/sys/stat/chmod.c -o $@
	echo [CC] $@
libc.a(mkdir.o): $(OBJDIR)/mkdir.o
$(OBJDIR)/mkdir.o: ./src/sys/stat/mkdir.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/sys/stat/mkdir.c -o $@
	echo [CC] $@
libc.a(lstat.o): $(OBJDIR)/lstat.o
$(OBJDIR)/lstat.o: ./src/sys/stat/lstat.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/sys/stat/lstat.c -o $@
	echo [CC] $@
libc.a(fstat.o): $(OBJDIR)/fstat.o
$(OBJDIR)/fstat.o: ./src/sys/stat/fstat.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/sys/stat/fstat.c -o $@
	echo [CC] $@
libcurses.a(unctrl.o): $(OBJDIR)/unctrl.o
$(OBJDIR)/unctrl.o: ./src/unctrl/unctrl.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unctrl/unctrl.c -o $@
	echo [CC] $@
libc.a(re_comp.o): $(OBJDIR)/re_comp.o
$(OBJDIR)/re_comp.o: ./src/re_comp/re_comp.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/re_comp/re_comp.c -o $@
	echo [CC] $@
libc.a(re_exec.o): $(OBJDIR)/re_exec.o
$(OBJDIR)/re_exec.o: ./src/re_comp/re_exec.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/re_comp/re_exec.c -o $@
	echo [CC] $@
libc.a(setjmp.o): $(OBJDIR)/setjmp.o
$(OBJDIR)/setjmp.o: ./src/setjmp/setjmp.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/setjmp/setjmp.c -o $@
	echo [CC] $@
libc.a(_longjmp.o): $(OBJDIR)/_longjmp.o
$(OBJDIR)/_longjmp.o: ./src/setjmp/_longjmp.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/setjmp/_longjmp.c -o $@
	echo [CC] $@
libc.a(_setjmp.o): $(OBJDIR)/_setjmp.o
$(OBJDIR)/_setjmp.o: ./src/setjmp/_setjmp.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/setjmp/_setjmp.c -o $@
	echo [CC] $@
libc.a(sigsetjmp.o): $(OBJDIR)/sigsetjmp.o
$(OBJDIR)/sigsetjmp.o: ./src/setjmp/sigsetjmp.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/setjmp/sigsetjmp.c -o $@
	echo [CC] $@
libc.a(siglongjmp.o): $(OBJDIR)/siglongjmp.o
$(OBJDIR)/siglongjmp.o: ./src/setjmp/siglongjmp.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/setjmp/siglongjmp.c -o $@
	echo [CC] $@
libc.a(longjmp.o): $(OBJDIR)/longjmp.o
$(OBJDIR)/longjmp.o: ./src/setjmp/longjmp.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/setjmp/longjmp.c -o $@
	echo [CC] $@
libc.a(bzero.o): $(OBJDIR)/bzero.o
$(OBJDIR)/bzero.o: ./src/strings/bzero.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/strings/bzero.c -o $@
	echo [CC] $@
libc.a(index.o): $(OBJDIR)/index.o
$(OBJDIR)/index.o: ./src/strings/index.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/strings/index.c -o $@
	echo [CC] $@
libc.a(bcmp.o): $(OBJDIR)/bcmp.o
$(OBJDIR)/bcmp.o: ./src/strings/bcmp.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/strings/bcmp.c -o $@
	echo [CC] $@
libc.a(strcasecmp.o): $(OBJDIR)/strcasecmp.o
$(OBJDIR)/strcasecmp.o: ./src/strings/strcasecmp.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/strings/strcasecmp.c -o $@
	echo [CC] $@
libc.a(rindex.o): $(OBJDIR)/rindex.o
$(OBJDIR)/rindex.o: ./src/strings/rindex.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/strings/rindex.c -o $@
	echo [CC] $@
libc.a(strncasecmp.o): $(OBJDIR)/strncasecmp.o
$(OBJDIR)/strncasecmp.o: ./src/strings/strncasecmp.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/strings/strncasecmp.c -o $@
	echo [CC] $@
libc.a(ffs.o): $(OBJDIR)/ffs.o
$(OBJDIR)/ffs.o: ./src/strings/ffs.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/strings/ffs.c -o $@
	echo [CC] $@
libc.a(bcopy.o): $(OBJDIR)/bcopy.o
$(OBJDIR)/bcopy.o: ./src/strings/bcopy.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/strings/bcopy.c -o $@
	echo [CC] $@
libc.a(lsearch.o): $(OBJDIR)/lsearch.o
$(OBJDIR)/lsearch.o: ./src/search/lsearch.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/search/lsearch.c -o $@
	echo [CC] $@
libc.a(tfind.o): $(OBJDIR)/tfind.o
$(OBJDIR)/tfind.o: ./src/search/tfind.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/search/tfind.c -o $@
	echo [CC] $@
libc.a(tsearch.o): $(OBJDIR)/tsearch.o
$(OBJDIR)/tsearch.o: ./src/search/tsearch.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/search/tsearch.c -o $@
	echo [CC] $@
libc.a(hdestroy.o): $(OBJDIR)/hdestroy.o
$(OBJDIR)/hdestroy.o: ./src/search/hdestroy.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/search/hdestroy.c -o $@
	echo [CC] $@
libc.a(insque.o): $(OBJDIR)/insque.o
$(OBJDIR)/insque.o: ./src/search/insque.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/search/insque.c -o $@
	echo [CC] $@
libc.a(twalk.o): $(OBJDIR)/twalk.o
$(OBJDIR)/twalk.o: ./src/search/twalk.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/search/twalk.c -o $@
	echo [CC] $@
libc.a(hsearch.o): $(OBJDIR)/hsearch.o
$(OBJDIR)/hsearch.o: ./src/search/hsearch.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/search/hsearch.c -o $@
	echo [CC] $@
libc.a(remque.o): $(OBJDIR)/remque.o
$(OBJDIR)/remque.o: ./src/search/remque.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/search/remque.c -o $@
	echo [CC] $@
libc.a(hcreate.o): $(OBJDIR)/hcreate.o
$(OBJDIR)/hcreate.o: ./src/search/hcreate.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/search/hcreate.c -o $@
	echo [CC] $@
libc.a(lfind.o): $(OBJDIR)/lfind.o
$(OBJDIR)/lfind.o: ./src/search/lfind.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/search/lfind.c -o $@
	echo [CC] $@
libc.a(tdelete.o): $(OBJDIR)/tdelete.o
$(OBJDIR)/tdelete.o: ./src/search/tdelete.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/search/tdelete.c -o $@
	echo [CC] $@
libc.a(setutxent.o): $(OBJDIR)/setutxent.o
$(OBJDIR)/setutxent.o: ./src/utmpx/setutxent.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/utmpx/setutxent.c -o $@
	echo [CC] $@
libc.a(getutxent.o): $(OBJDIR)/getutxent.o
$(OBJDIR)/getutxent.o: ./src/utmpx/getutxent.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/utmpx/getutxent.c -o $@
	echo [CC] $@
libc.a(getutxid.o): $(OBJDIR)/getutxid.o
$(OBJDIR)/getutxid.o: ./src/utmpx/getutxid.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/utmpx/getutxid.c -o $@
	echo [CC] $@
libc.a(getutxline.o): $(OBJDIR)/getutxline.o
$(OBJDIR)/getutxline.o: ./src/utmpx/getutxline.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/utmpx/getutxline.c -o $@
	echo [CC] $@
libc.a(pututxline.o): $(OBJDIR)/pututxline.o
$(OBJDIR)/pututxline.o: ./src/utmpx/pututxline.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/utmpx/pututxline.c -o $@
	echo [CC] $@
libc.a(endutxent.o): $(OBJDIR)/endutxent.o
$(OBJDIR)/endutxent.o: ./src/utmpx/endutxent.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/utmpx/endutxent.c -o $@
	echo [CC] $@
libc.a(creat.o): $(OBJDIR)/creat.o
$(OBJDIR)/creat.o: ./src/fcntl/creat.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/fcntl/creat.c -o $@
	echo [CC] $@
libc.a(open.o): $(OBJDIR)/open.o
$(OBJDIR)/open.o: ./src/fcntl/open.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/fcntl/open.c -o $@
	echo [CC] $@
libc.a(fcntl.o): $(OBJDIR)/fcntl.o
$(OBJDIR)/fcntl.o: ./src/fcntl/fcntl.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/fcntl/fcntl.c -o $@
	echo [CC] $@
libc.a(environ.o): $(OBJDIR)/environ.o
$(OBJDIR)/environ.o: ./src/environ.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/environ.c -o $@
	echo [CC] $@
libc.a(dbm_nextkey.o): $(OBJDIR)/dbm_nextkey.o
$(OBJDIR)/dbm_nextkey.o: ./src/ndbm/dbm_nextkey.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/ndbm/dbm_nextkey.c -o $@
	echo [CC] $@
libc.a(dbm_store.o): $(OBJDIR)/dbm_store.o
$(OBJDIR)/dbm_store.o: ./src/ndbm/dbm_store.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/ndbm/dbm_store.c -o $@
	echo [CC] $@
libc.a(dbm_delete.o): $(OBJDIR)/dbm_delete.o
$(OBJDIR)/dbm_delete.o: ./src/ndbm/dbm_delete.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/ndbm/dbm_delete.c -o $@
	echo [CC] $@
libc.a(dbm_firstkey.o): $(OBJDIR)/dbm_firstkey.o
$(OBJDIR)/dbm_firstkey.o: ./src/ndbm/dbm_firstkey.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/ndbm/dbm_firstkey.c -o $@
	echo [CC] $@
libc.a(dbm_error.o): $(OBJDIR)/dbm_error.o
$(OBJDIR)/dbm_error.o: ./src/ndbm/dbm_error.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/ndbm/dbm_error.c -o $@
	echo [CC] $@
libc.a(dbm_close.o): $(OBJDIR)/dbm_close.o
$(OBJDIR)/dbm_close.o: ./src/ndbm/dbm_close.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/ndbm/dbm_close.c -o $@
	echo [CC] $@
libc.a(dbm_fetch.o): $(OBJDIR)/dbm_fetch.o
$(OBJDIR)/dbm_fetch.o: ./src/ndbm/dbm_fetch.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/ndbm/dbm_fetch.c -o $@
	echo [CC] $@
libc.a(dbm_open.o): $(OBJDIR)/dbm_open.o
$(OBJDIR)/dbm_open.o: ./src/ndbm/dbm_open.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/ndbm/dbm_open.c -o $@
	echo [CC] $@
libc.a(dbm_clearerr.o): $(OBJDIR)/dbm_clearerr.o
$(OBJDIR)/dbm_clearerr.o: ./src/ndbm/dbm_clearerr.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/ndbm/dbm_clearerr.c -o $@
	echo [CC] $@
libc.a(_XOPEN_SOURCE_EXTENDED.o): $(OBJDIR)/_XOPEN_SOURCE_EXTENDED.o
$(OBJDIR)/_XOPEN_SOURCE_EXTENDED.o: ./src/__FEATURE_TEST_MACROS__/_XOPEN_SOURCE_EXTENDED.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/__FEATURE_TEST_MACROS__/_XOPEN_SOURCE_EXTENDED.c -o $@
	echo [CC] $@
libc.a(_XOPEN_SOURCE.o): $(OBJDIR)/_XOPEN_SOURCE.o
$(OBJDIR)/_XOPEN_SOURCE.o: ./src/__FEATURE_TEST_MACROS__/_XOPEN_SOURCE.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/__FEATURE_TEST_MACROS__/_XOPEN_SOURCE.c -o $@
	echo [CC] $@
libc.a(_POSIX_C_SOURCE.o): $(OBJDIR)/_POSIX_C_SOURCE.o
$(OBJDIR)/_POSIX_C_SOURCE.o: ./src/__FEATURE_TEST_MACROS__/_POSIX_C_SOURCE.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/__FEATURE_TEST_MACROS__/_POSIX_C_SOURCE.c -o $@
	echo [CC] $@
libc.a(regcomp.o): $(OBJDIR)/regcomp.o
$(OBJDIR)/regcomp.o: ./src/regex/regcomp.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/regex/regcomp.c -o $@
	echo [CC] $@
libc.a(regexec.o): $(OBJDIR)/regexec.o
$(OBJDIR)/regexec.o: ./src/regex/regexec.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/regex/regexec.c -o $@
	echo [CC] $@
libc.a(regfree.o): $(OBJDIR)/regfree.o
$(OBJDIR)/regfree.o: ./src/regex/regfree.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/regex/regfree.c -o $@
	echo [CC] $@
libc.a(regerror.o): $(OBJDIR)/regerror.o
$(OBJDIR)/regerror.o: ./src/regex/regerror.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/regex/regerror.c -o $@
	echo [CC] $@
libc.a(fmtmsg.o): $(OBJDIR)/fmtmsg.o
$(OBJDIR)/fmtmsg.o: ./src/fmtmsg/fmtmsg.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/fmtmsg/fmtmsg.c -o $@
	echo [CC] $@
libm.a(fetestexcept.o): $(OBJDIR)/fetestexcept.o
$(OBJDIR)/fetestexcept.o: ./src/fenv/fetestexcept.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/fenv/fetestexcept.c -o $@
	echo [CC] $@
libm.a(feholdexcept.o): $(OBJDIR)/feholdexcept.o
$(OBJDIR)/feholdexcept.o: ./src/fenv/feholdexcept.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/fenv/feholdexcept.c -o $@
	echo [CC] $@
libm.a(fegetexceptflag.o): $(OBJDIR)/fegetexceptflag.o
$(OBJDIR)/fegetexceptflag.o: ./src/fenv/fegetexceptflag.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/fenv/fegetexceptflag.c -o $@
	echo [CC] $@
libm.a(feupdateenv.o): $(OBJDIR)/feupdateenv.o
$(OBJDIR)/feupdateenv.o: ./src/fenv/feupdateenv.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/fenv/feupdateenv.c -o $@
	echo [CC] $@
libm.a(feraiseexcept.o): $(OBJDIR)/feraiseexcept.o
$(OBJDIR)/feraiseexcept.o: ./src/fenv/feraiseexcept.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/fenv/feraiseexcept.c -o $@
	echo [CC] $@
libm.a(fesetexceptflag.o): $(OBJDIR)/fesetexceptflag.o
$(OBJDIR)/fesetexceptflag.o: ./src/fenv/fesetexceptflag.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/fenv/fesetexceptflag.c -o $@
	echo [CC] $@
libm.a(fegetenv.o): $(OBJDIR)/fegetenv.o
$(OBJDIR)/fegetenv.o: ./src/fenv/fegetenv.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/fenv/fegetenv.c -o $@
	echo [CC] $@
libm.a(fegetround.o): $(OBJDIR)/fegetround.o
$(OBJDIR)/fegetround.o: ./src/fenv/fegetround.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/fenv/fegetround.c -o $@
	echo [CC] $@
libm.a(fesetenv.o): $(OBJDIR)/fesetenv.o
$(OBJDIR)/fesetenv.o: ./src/fenv/fesetenv.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/fenv/fesetenv.c -o $@
	echo [CC] $@
libm.a(feclearexcept.o): $(OBJDIR)/feclearexcept.o
$(OBJDIR)/feclearexcept.o: ./src/fenv/feclearexcept.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/fenv/feclearexcept.c -o $@
	echo [CC] $@
libm.a(fesetround.o): $(OBJDIR)/fesetround.o
$(OBJDIR)/fesetround.o: ./src/fenv/fesetround.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/fenv/fesetround.c -o $@
	echo [CC] $@
libc.a(wordexp.o): $(OBJDIR)/wordexp.o
$(OBJDIR)/wordexp.o: ./src/wordexp/wordexp.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wordexp/wordexp.c -o $@
	echo [CC] $@
libc.a(wordfree.o): $(OBJDIR)/wordfree.o
$(OBJDIR)/wordfree.o: ./src/wordexp/wordfree.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wordexp/wordfree.c -o $@
	echo [CC] $@
libc.a(utime.o): $(OBJDIR)/utime.o
$(OBJDIR)/utime.o: ./src/utime/utime.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/utime/utime.c -o $@
	echo [CC] $@
libc.a(fnmatch.o): $(OBJDIR)/fnmatch.o
$(OBJDIR)/fnmatch.o: ./src/fnmatch/fnmatch.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/fnmatch/fnmatch.c -o $@
	echo [CC] $@
libc.a(daylight.o): $(OBJDIR)/daylight.o
$(OBJDIR)/daylight.o: ./src/time/daylight.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/time/daylight.c -o $@
	echo [CC] $@
libc.a(localtime.o): $(OBJDIR)/localtime.o
$(OBJDIR)/localtime.o: ./src/time/localtime.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/time/localtime.c -o $@
	echo [CC] $@
librt.a(timer_create.o): $(OBJDIR)/timer_create.o
$(OBJDIR)/timer_create.o: ./src/time/timer_create.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/time/timer_create.c -o $@
	echo [CC] $@
libc.a(strptime.o): $(OBJDIR)/strptime.o
$(OBJDIR)/strptime.o: ./src/time/strptime.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/time/strptime.c -o $@
	echo [CC] $@
librt.a(timer_delete.o): $(OBJDIR)/timer_delete.o
$(OBJDIR)/timer_delete.o: ./src/time/timer_delete.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/time/timer_delete.c -o $@
	echo [CC] $@
libc.a(strftime.o): $(OBJDIR)/strftime.o
$(OBJDIR)/strftime.o: ./src/time/strftime.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/time/strftime.c -o $@
	echo [CC] $@
libc.a(gmtime.o): $(OBJDIR)/gmtime.o
$(OBJDIR)/gmtime.o: ./src/time/gmtime.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/time/gmtime.c -o $@
	echo [CC] $@
librt.a(clock_settime.o): $(OBJDIR)/clock_settime.o
$(OBJDIR)/clock_settime.o: ./src/time/clock_settime.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/time/clock_settime.c -o $@
	echo [CC] $@
librt.a(timer_gettime.o): $(OBJDIR)/timer_gettime.o
$(OBJDIR)/timer_gettime.o: ./src/time/timer_gettime.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/time/timer_gettime.c -o $@
	echo [CC] $@
libc.a(time.o): $(OBJDIR)/time.o
$(OBJDIR)/time.o: ./src/time/time.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/time/time.c -o $@
	echo [CC] $@
libc.a(timezone.o): $(OBJDIR)/timezone.o
$(OBJDIR)/timezone.o: ./src/time/timezone.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/time/timezone.c -o $@
	echo [CC] $@
libc.a(tzset.o): $(OBJDIR)/tzset.o
$(OBJDIR)/tzset.o: ./src/time/tzset.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/time/tzset.c -o $@
	echo [CC] $@
libc.a(clock.o): $(OBJDIR)/clock.o
$(OBJDIR)/clock.o: ./src/time/clock.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/time/clock.c -o $@
	echo [CC] $@
librt.a(timer_settime.o): $(OBJDIR)/timer_settime.o
$(OBJDIR)/timer_settime.o: ./src/time/timer_settime.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/time/timer_settime.c -o $@
	echo [CC] $@
libc.a(asctime.o): $(OBJDIR)/asctime.o
$(OBJDIR)/asctime.o: ./src/time/asctime.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/time/asctime.c -o $@
	echo [CC] $@
libc.a(ctime.o): $(OBJDIR)/ctime.o
$(OBJDIR)/ctime.o: ./src/time/ctime.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/time/ctime.c -o $@
	echo [CC] $@
librt.a(clock_gettime.o): $(OBJDIR)/clock_gettime.o
$(OBJDIR)/clock_gettime.o: ./src/time/clock_gettime.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/time/clock_gettime.c -o $@
	echo [CC] $@
libc.a(getdate.o): $(OBJDIR)/getdate.o
$(OBJDIR)/getdate.o: ./src/time/getdate.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/time/getdate.c -o $@
	echo [CC] $@
libc.a(nanosleep.o): $(OBJDIR)/nanosleep.o
$(OBJDIR)/nanosleep.o: ./src/time/nanosleep.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/time/nanosleep.c -o $@
	echo [CC] $@
libc.a(difftime.o): $(OBJDIR)/difftime.o
$(OBJDIR)/difftime.o: ./src/time/difftime.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/time/difftime.c -o $@
	echo [CC] $@
librt.a(timer_getoverrun.o): $(OBJDIR)/timer_getoverrun.o
$(OBJDIR)/timer_getoverrun.o: ./src/time/timer_getoverrun.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/time/timer_getoverrun.c -o $@
	echo [CC] $@
libc.a(getdate_err.o): $(OBJDIR)/getdate_err.o
$(OBJDIR)/getdate_err.o: ./src/time/getdate_err.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/time/getdate_err.c -o $@
	echo [CC] $@
libc.a(tzname.o): $(OBJDIR)/tzname.o
$(OBJDIR)/tzname.o: ./src/time/tzname.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/time/tzname.c -o $@
	echo [CC] $@
libc.a(mktime.o): $(OBJDIR)/mktime.o
$(OBJDIR)/mktime.o: ./src/time/mktime.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/time/mktime.c -o $@
	echo [CC] $@
librt.a(clock_getres.o): $(OBJDIR)/clock_getres.o
$(OBJDIR)/clock_getres.o: ./src/time/clock_getres.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/time/clock_getres.c -o $@
	echo [CC] $@
libc.a(fread.o): $(OBJDIR)/fread.o
$(OBJDIR)/fread.o: ./src/stdio/fread.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdio/fread.c -o $@
	echo [CC] $@
libc.a(fgetpos.o): $(OBJDIR)/fgetpos.o
$(OBJDIR)/fgetpos.o: ./src/stdio/fgetpos.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdio/fgetpos.c -o $@
	echo [CC] $@
libc.a(fclose.o): $(OBJDIR)/fclose.o
$(OBJDIR)/fclose.o: ./src/stdio/fclose.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdio/fclose.c -o $@
	echo [CC] $@
libc.a(fopen.o): $(OBJDIR)/fopen.o
$(OBJDIR)/fopen.o: ./src/stdio/fopen.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdio/fopen.c -o $@
	echo [CC] $@
libc.a(funlockfile.o): $(OBJDIR)/funlockfile.o
$(OBJDIR)/funlockfile.o: ./src/stdio/funlockfile.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdio/funlockfile.c -o $@
	echo [CC] $@
libc.a(ftell.o): $(OBJDIR)/ftell.o
$(OBJDIR)/ftell.o: ./src/stdio/ftell.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdio/ftell.c -o $@
	echo [CC] $@
libc.a(getchar_unlocked.o): $(OBJDIR)/getchar_unlocked.o
$(OBJDIR)/getchar_unlocked.o: ./src/stdio/getchar_unlocked.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdio/getchar_unlocked.c -o $@
	echo [CC] $@
libc.a(sscanf.o): $(OBJDIR)/sscanf.o
$(OBJDIR)/sscanf.o: ./src/stdio/sscanf.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdio/sscanf.c -o $@
	echo [CC] $@
libc.a(fsetpos.o): $(OBJDIR)/fsetpos.o
$(OBJDIR)/fsetpos.o: ./src/stdio/fsetpos.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdio/fsetpos.c -o $@
	echo [CC] $@
libc.a(flockfile.o): $(OBJDIR)/flockfile.o
$(OBJDIR)/flockfile.o: ./src/stdio/flockfile.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdio/flockfile.c -o $@
	echo [CC] $@
libc.a(pclose.o): $(OBJDIR)/pclose.o
$(OBJDIR)/pclose.o: ./src/stdio/pclose.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdio/pclose.c -o $@
	echo [CC] $@
libc.a(scanf.o): $(OBJDIR)/scanf.o
$(OBJDIR)/scanf.o: ./src/stdio/scanf.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdio/scanf.c -o $@
	echo [CC] $@
libc.a(__stderr.o): $(OBJDIR)/__stderr.o
$(OBJDIR)/__stderr.o: ./src/stdio/__stderr.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdio/__stderr.c -o $@
	echo [CC] $@
libc.a(rename.o): $(OBJDIR)/rename.o
$(OBJDIR)/rename.o: ./src/stdio/rename.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdio/rename.c -o $@
	echo [CC] $@
libc.a(fdopen.o): $(OBJDIR)/fdopen.o
$(OBJDIR)/fdopen.o: ./src/stdio/fdopen.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdio/fdopen.c -o $@
	echo [CC] $@
libc.a(fgets.o): $(OBJDIR)/fgets.o
$(OBJDIR)/fgets.o: ./src/stdio/fgets.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdio/fgets.c -o $@
	echo [CC] $@
libc.a(getw.o): $(OBJDIR)/getw.o
$(OBJDIR)/getw.o: ./src/stdio/getw.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdio/getw.c -o $@
	echo [CC] $@
libc.a(fwrite.o): $(OBJDIR)/fwrite.o
$(OBJDIR)/fwrite.o: ./src/stdio/fwrite.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdio/fwrite.c -o $@
	echo [CC] $@
libc.a(remove.o): $(OBJDIR)/remove.o
$(OBJDIR)/remove.o: ./src/stdio/remove.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdio/remove.c -o $@
	echo [CC] $@
libc.a(__stdout.o): $(OBJDIR)/__stdout.o
$(OBJDIR)/__stdout.o: ./src/stdio/__stdout.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdio/__stdout.c -o $@
	echo [CC] $@
libc.a(fgetc.o): $(OBJDIR)/fgetc.o
$(OBJDIR)/fgetc.o: ./src/stdio/fgetc.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdio/fgetc.c -o $@
	echo [CC] $@
libc.a(clearerr.o): $(OBJDIR)/clearerr.o
$(OBJDIR)/clearerr.o: ./src/stdio/clearerr.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdio/clearerr.c -o $@
	echo [CC] $@
libc.a(fputc.o): $(OBJDIR)/fputc.o
$(OBJDIR)/fputc.o: ./src/stdio/fputc.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdio/fputc.c -o $@
	echo [CC] $@
libc.a(__stdin.o): $(OBJDIR)/__stdin.o
$(OBJDIR)/__stdin.o: ./src/stdio/__stdin.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdio/__stdin.c -o $@
	echo [CC] $@
libc.a(setvbuf.o): $(OBJDIR)/setvbuf.o
$(OBJDIR)/setvbuf.o: ./src/stdio/setvbuf.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdio/setvbuf.c -o $@
	echo [CC] $@
libc.a(putchar_unlocked.o): $(OBJDIR)/putchar_unlocked.o
$(OBJDIR)/putchar_unlocked.o: ./src/stdio/putchar_unlocked.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdio/putchar_unlocked.c -o $@
	echo [CC] $@
libc.a(vsnprintf.o): $(OBJDIR)/vsnprintf.o
$(OBJDIR)/vsnprintf.o: ./src/stdio/vsnprintf.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdio/vsnprintf.c -o $@
	echo [CC] $@
libc.a(vsscanf.o): $(OBJDIR)/vsscanf.o
$(OBJDIR)/vsscanf.o: ./src/stdio/vsscanf.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdio/vsscanf.c -o $@
	echo [CC] $@
libc.a(vsprintf.o): $(OBJDIR)/vsprintf.o
$(OBJDIR)/vsprintf.o: ./src/stdio/vsprintf.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdio/vsprintf.c -o $@
	echo [CC] $@
libc.a(freopen.o): $(OBJDIR)/freopen.o
$(OBJDIR)/freopen.o: ./src/stdio/freopen.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdio/freopen.c -o $@
	echo [CC] $@
libc.a(popen.o): $(OBJDIR)/popen.o
$(OBJDIR)/popen.o: ./src/stdio/popen.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdio/popen.c -o $@
	echo [CC] $@
libc.a(tmpfile.o): $(OBJDIR)/tmpfile.o
$(OBJDIR)/tmpfile.o: ./src/stdio/tmpfile.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdio/tmpfile.c -o $@
	echo [CC] $@
libc.a(fputs.o): $(OBJDIR)/fputs.o
$(OBJDIR)/fputs.o: ./src/stdio/fputs.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdio/fputs.c -o $@
	echo [CC] $@
libc.a(tempnam.o): $(OBJDIR)/tempnam.o
$(OBJDIR)/tempnam.o: ./src/stdio/tempnam.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdio/tempnam.c -o $@
	echo [CC] $@
libc.a(vfprintf.o): $(OBJDIR)/vfprintf.o
$(OBJDIR)/vfprintf.o: ./src/stdio/vfprintf.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdio/vfprintf.c -o $@
	echo [CC] $@
libc.a(perror.o): $(OBJDIR)/perror.o
$(OBJDIR)/perror.o: ./src/stdio/perror.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdio/perror.c -o $@
	echo [CC] $@
libc.a(fscanf.o): $(OBJDIR)/fscanf.o
$(OBJDIR)/fscanf.o: ./src/stdio/fscanf.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdio/fscanf.c -o $@
	echo [CC] $@
libc.a(sprintf.o): $(OBJDIR)/sprintf.o
$(OBJDIR)/sprintf.o: ./src/stdio/sprintf.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdio/sprintf.c -o $@
	echo [CC] $@
libc.a(vfscanf.o): $(OBJDIR)/vfscanf.o
$(OBJDIR)/vfscanf.o: ./src/stdio/vfscanf.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdio/vfscanf.c -o $@
	echo [CC] $@
libc.a(vprintf.o): $(OBJDIR)/vprintf.o
$(OBJDIR)/vprintf.o: ./src/stdio/vprintf.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdio/vprintf.c -o $@
	echo [CC] $@
libc.a(fprintf.o): $(OBJDIR)/fprintf.o
$(OBJDIR)/fprintf.o: ./src/stdio/fprintf.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdio/fprintf.c -o $@
	echo [CC] $@
libc.a(getchar.o): $(OBJDIR)/getchar.o
$(OBJDIR)/getchar.o: ./src/stdio/getchar.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdio/getchar.c -o $@
	echo [CC] $@
libc.a(rewind.o): $(OBJDIR)/rewind.o
$(OBJDIR)/rewind.o: ./src/stdio/rewind.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdio/rewind.c -o $@
	echo [CC] $@
libc.a(ungetc.o): $(OBJDIR)/ungetc.o
$(OBJDIR)/ungetc.o: ./src/stdio/ungetc.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdio/ungetc.c -o $@
	echo [CC] $@
libc.a(putw.o): $(OBJDIR)/putw.o
$(OBJDIR)/putw.o: ./src/stdio/putw.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdio/putw.c -o $@
	echo [CC] $@
libc.a(getc.o): $(OBJDIR)/getc.o
$(OBJDIR)/getc.o: ./src/stdio/getc.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdio/getc.c -o $@
	echo [CC] $@
libc.a(snprintf.o): $(OBJDIR)/snprintf.o
$(OBJDIR)/snprintf.o: ./src/stdio/snprintf.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdio/snprintf.c -o $@
	echo [CC] $@
libc.a(setbuf.o): $(OBJDIR)/setbuf.o
$(OBJDIR)/setbuf.o: ./src/stdio/setbuf.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdio/setbuf.c -o $@
	echo [CC] $@
libc.a(gets.o): $(OBJDIR)/gets.o
$(OBJDIR)/gets.o: ./src/stdio/gets.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdio/gets.c -o $@
	echo [CC] $@
libc.a(__stdio.o): $(OBJDIR)/__stdio.o
$(OBJDIR)/__stdio.o: ./src/stdio/__stdio.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdio/__stdio.c -o $@
	echo [CC] $@
libc.a(putc.o): $(OBJDIR)/putc.o
$(OBJDIR)/putc.o: ./src/stdio/putc.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdio/putc.c -o $@
	echo [CC] $@
libc.a(feof.o): $(OBJDIR)/feof.o
$(OBJDIR)/feof.o: ./src/stdio/feof.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdio/feof.c -o $@
	echo [CC] $@
libc.a(ferror.o): $(OBJDIR)/ferror.o
$(OBJDIR)/ferror.o: ./src/stdio/ferror.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdio/ferror.c -o $@
	echo [CC] $@
libc.a(putchar.o): $(OBJDIR)/putchar.o
$(OBJDIR)/putchar.o: ./src/stdio/putchar.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdio/putchar.c -o $@
	echo [CC] $@
libc.a(puts.o): $(OBJDIR)/puts.o
$(OBJDIR)/puts.o: ./src/stdio/puts.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdio/puts.c -o $@
	echo [CC] $@
libc.a(fflush.o): $(OBJDIR)/fflush.o
$(OBJDIR)/fflush.o: ./src/stdio/fflush.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdio/fflush.c -o $@
	echo [CC] $@
libc.a(vscanf.o): $(OBJDIR)/vscanf.o
$(OBJDIR)/vscanf.o: ./src/stdio/vscanf.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdio/vscanf.c -o $@
	echo [CC] $@
libc.a(fileno.o): $(OBJDIR)/fileno.o
$(OBJDIR)/fileno.o: ./src/stdio/fileno.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdio/fileno.c -o $@
	echo [CC] $@
libc.a(printf.o): $(OBJDIR)/printf.o
$(OBJDIR)/printf.o: ./src/stdio/printf.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdio/printf.c -o $@
	echo [CC] $@
libc.a(__printf.o): $(OBJDIR)/__printf.o
$(OBJDIR)/__printf.o: ./src/stdio/__printf.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdio/__printf.c -o $@
	echo [CC] $@
libc.a(fseek.o): $(OBJDIR)/fseek.o
$(OBJDIR)/fseek.o: ./src/stdio/fseek.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdio/fseek.c -o $@
	echo [CC] $@
libc.a(tmpnam.o): $(OBJDIR)/tmpnam.o
$(OBJDIR)/tmpnam.o: ./src/stdio/tmpnam.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdio/tmpnam.c -o $@
	echo [CC] $@
libc.a(getopt.o): $(OBJDIR)/getopt.o
$(OBJDIR)/getopt.o: ./src/unistd/getopt.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/getopt.c -o $@
	echo [CC] $@
libc.a(getegid.o): $(OBJDIR)/getegid.o
$(OBJDIR)/getegid.o: ./src/unistd/getegid.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/getegid.c -o $@
	echo [CC] $@
libc.a(access.o): $(OBJDIR)/access.o
$(OBJDIR)/access.o: ./src/unistd/access.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/access.c -o $@
	echo [CC] $@
libc.a(optopt.o): $(OBJDIR)/optopt.o
$(OBJDIR)/optopt.o: ./src/unistd/optopt.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/optopt.c -o $@
	echo [CC] $@
libc.a(getuid.o): $(OBJDIR)/getuid.o
$(OBJDIR)/getuid.o: ./src/unistd/getuid.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/getuid.c -o $@
	echo [CC] $@
libc.a(fpathconf.o): $(OBJDIR)/fpathconf.o
$(OBJDIR)/fpathconf.o: ./src/unistd/fpathconf.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/fpathconf.c -o $@
	echo [CC] $@
libc.a(ualarm.o): $(OBJDIR)/ualarm.o
$(OBJDIR)/ualarm.o: ./src/unistd/ualarm.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/ualarm.c -o $@
	echo [CC] $@
libc.a(alarm.o): $(OBJDIR)/alarm.o
$(OBJDIR)/alarm.o: ./src/unistd/alarm.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/alarm.c -o $@
	echo [CC] $@
libc.a(nice.o): $(OBJDIR)/nice.o
$(OBJDIR)/nice.o: ./src/unistd/nice.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/nice.c -o $@
	echo [CC] $@
libc.a(geteuid.o): $(OBJDIR)/geteuid.o
$(OBJDIR)/geteuid.o: ./src/unistd/geteuid.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/geteuid.c -o $@
	echo [CC] $@
libc.a(lchown.o): $(OBJDIR)/lchown.o
$(OBJDIR)/lchown.o: ./src/unistd/lchown.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/lchown.c -o $@
	echo [CC] $@
libc.a(getpass.o): $(OBJDIR)/getpass.o
$(OBJDIR)/getpass.o: ./src/unistd/getpass.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/getpass.c -o $@
	echo [CC] $@
libc.a(symlink.o): $(OBJDIR)/symlink.o
$(OBJDIR)/symlink.o: ./src/unistd/symlink.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/symlink.c -o $@
	echo [CC] $@
libc.a(sync.o): $(OBJDIR)/sync.o
$(OBJDIR)/sync.o: ./src/unistd/sync.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/sync.c -o $@
	echo [CC] $@
libc.a(opterr.o): $(OBJDIR)/opterr.o
$(OBJDIR)/opterr.o: ./src/unistd/opterr.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/opterr.c -o $@
	echo [CC] $@
libc.a(getcwd.o): $(OBJDIR)/getcwd.o
$(OBJDIR)/getcwd.o: ./src/unistd/getcwd.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/getcwd.c -o $@
	echo [CC] $@
libc.a(vfork.o): $(OBJDIR)/vfork.o
$(OBJDIR)/vfork.o: ./src/unistd/vfork.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/vfork.c -o $@
	echo [CC] $@
libc.a(getwd.o): $(OBJDIR)/getwd.o
$(OBJDIR)/getwd.o: ./src/unistd/getwd.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/getwd.c -o $@
	echo [CC] $@
libc.a(setsid.o): $(OBJDIR)/setsid.o
$(OBJDIR)/setsid.o: ./src/unistd/setsid.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/setsid.c -o $@
	echo [CC] $@
libc.a(ttyname.o): $(OBJDIR)/ttyname.o
$(OBJDIR)/ttyname.o: ./src/unistd/ttyname.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/ttyname.c -o $@
	echo [CC] $@
libc.a(swab.o): $(OBJDIR)/swab.o
$(OBJDIR)/swab.o: ./src/unistd/swab.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/swab.c -o $@
	echo [CC] $@
libc.a(execve.o): $(OBJDIR)/execve.o
$(OBJDIR)/execve.o: ./src/unistd/execve.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/execve.c -o $@
	echo [CC] $@
libc.a(lseek.o): $(OBJDIR)/lseek.o
$(OBJDIR)/lseek.o: ./src/unistd/lseek.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/lseek.c -o $@
	echo [CC] $@
libc.a(execv.o): $(OBJDIR)/execv.o
$(OBJDIR)/execv.o: ./src/unistd/execv.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/execv.c -o $@
	echo [CC] $@
libc.a(fsync.o): $(OBJDIR)/fsync.o
$(OBJDIR)/fsync.o: ./src/unistd/fsync.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/fsync.c -o $@
	echo [CC] $@
libc.a(sbrk.o): $(OBJDIR)/sbrk.o
$(OBJDIR)/sbrk.o: ./src/unistd/sbrk.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/sbrk.c -o $@
	echo [CC] $@
libc.a(optarg.o): $(OBJDIR)/optarg.o
$(OBJDIR)/optarg.o: ./src/unistd/optarg.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/optarg.c -o $@
	echo [CC] $@
libc.a(getpagesize.o): $(OBJDIR)/getpagesize.o
$(OBJDIR)/getpagesize.o: ./src/unistd/getpagesize.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/getpagesize.c -o $@
	echo [CC] $@
libc.a(pathconf.o): $(OBJDIR)/pathconf.o
$(OBJDIR)/pathconf.o: ./src/unistd/pathconf.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/pathconf.c -o $@
	echo [CC] $@
libc.a(rmdir.o): $(OBJDIR)/rmdir.o
$(OBJDIR)/rmdir.o: ./src/unistd/rmdir.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/rmdir.c -o $@
	echo [CC] $@
libc.a(getpgrp.o): $(OBJDIR)/getpgrp.o
$(OBJDIR)/getpgrp.o: ./src/unistd/getpgrp.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/getpgrp.c -o $@
	echo [CC] $@
libc.a(execl.o): $(OBJDIR)/execl.o
$(OBJDIR)/execl.o: ./src/unistd/execl.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/execl.c -o $@
	echo [CC] $@
libc.a(tcgetpgrp.o): $(OBJDIR)/tcgetpgrp.o
$(OBJDIR)/tcgetpgrp.o: ./src/unistd/tcgetpgrp.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/tcgetpgrp.c -o $@
	echo [CC] $@
libc.a(chdir.o): $(OBJDIR)/chdir.o
$(OBJDIR)/chdir.o: ./src/unistd/chdir.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/chdir.c -o $@
	echo [CC] $@
libc.a(read.o): $(OBJDIR)/read.o
$(OBJDIR)/read.o: ./src/unistd/read.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/read.c -o $@
	echo [CC] $@
libc.a(unlink.o): $(OBJDIR)/unlink.o
$(OBJDIR)/unlink.o: ./src/unistd/unlink.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/unlink.c -o $@
	echo [CC] $@
libc.a(ftruncate.o): $(OBJDIR)/ftruncate.o
$(OBJDIR)/ftruncate.o: ./src/unistd/ftruncate.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/ftruncate.c -o $@
	echo [CC] $@
libc.a(isatty.o): $(OBJDIR)/isatty.o
$(OBJDIR)/isatty.o: ./src/unistd/isatty.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/isatty.c -o $@
	echo [CC] $@
libc.a(getppid.o): $(OBJDIR)/getppid.o
$(OBJDIR)/getppid.o: ./src/unistd/getppid.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/getppid.c -o $@
	echo [CC] $@
libc.a(dup2.o): $(OBJDIR)/dup2.o
$(OBJDIR)/dup2.o: ./src/unistd/dup2.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/dup2.c -o $@
	echo [CC] $@
libc.a(pause.o): $(OBJDIR)/pause.o
$(OBJDIR)/pause.o: ./src/unistd/pause.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/pause.c -o $@
	echo [CC] $@
libc.a(fchown.o): $(OBJDIR)/fchown.o
$(OBJDIR)/fchown.o: ./src/unistd/fchown.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/fchown.c -o $@
	echo [CC] $@
libc.a(chroot.o): $(OBJDIR)/chroot.o
$(OBJDIR)/chroot.o: ./src/unistd/chroot.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/chroot.c -o $@
	echo [CC] $@
libc.a(execvp.o): $(OBJDIR)/execvp.o
$(OBJDIR)/execvp.o: ./src/unistd/execvp.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/execvp.c -o $@
	echo [CC] $@
libc.a(setpgid.o): $(OBJDIR)/setpgid.o
$(OBJDIR)/setpgid.o: ./src/unistd/setpgid.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/setpgid.c -o $@
	echo [CC] $@
libc.a(getlogin.o): $(OBJDIR)/getlogin.o
$(OBJDIR)/getlogin.o: ./src/unistd/getlogin.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/getlogin.c -o $@
	echo [CC] $@
libc.a(gethostid.o): $(OBJDIR)/gethostid.o
$(OBJDIR)/gethostid.o: ./src/unistd/gethostid.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/gethostid.c -o $@
	echo [CC] $@
libc.a(setgid.o): $(OBJDIR)/setgid.o
$(OBJDIR)/setgid.o: ./src/unistd/setgid.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/setgid.c -o $@
	echo [CC] $@
libc.a(crypt.o): $(OBJDIR)/crypt.o
$(OBJDIR)/crypt.o: ./src/unistd/crypt.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/crypt.c -o $@
	echo [CC] $@
libc.a(brk.o): $(OBJDIR)/brk.o
$(OBJDIR)/brk.o: ./src/unistd/brk.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/brk.c -o $@
	echo [CC] $@
libc.a(setuid.o): $(OBJDIR)/setuid.o
$(OBJDIR)/setuid.o: ./src/unistd/setuid.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/setuid.c -o $@
	echo [CC] $@
libc.a(setpgrp.o): $(OBJDIR)/setpgrp.o
$(OBJDIR)/setpgrp.o: ./src/unistd/setpgrp.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/setpgrp.c -o $@
	echo [CC] $@
libc.a(_exit.o): $(OBJDIR)/_exit.o
$(OBJDIR)/_exit.o: ./src/unistd/_exit.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/_exit.c -o $@
	echo [CC] $@
libc.a(encrypt.o): $(OBJDIR)/encrypt.o
$(OBJDIR)/encrypt.o: ./src/unistd/encrypt.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/encrypt.c -o $@
	echo [CC] $@
libc.a(write.o): $(OBJDIR)/write.o
$(OBJDIR)/write.o: ./src/unistd/write.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/write.c -o $@
	echo [CC] $@
libc.a(usleep.o): $(OBJDIR)/usleep.o
$(OBJDIR)/usleep.o: ./src/unistd/usleep.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/usleep.c -o $@
	echo [CC] $@
libc.a(execle.o): $(OBJDIR)/execle.o
$(OBJDIR)/execle.o: ./src/unistd/execle.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/execle.c -o $@
	echo [CC] $@
libc.a(setregid.o): $(OBJDIR)/setregid.o
$(OBJDIR)/setregid.o: ./src/unistd/setregid.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/setregid.c -o $@
	echo [CC] $@
libc.a(close.o): $(OBJDIR)/close.o
$(OBJDIR)/close.o: ./src/unistd/close.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/close.c -o $@
	echo [CC] $@
libc.a(getdtablesize.o): $(OBJDIR)/getdtablesize.o
$(OBJDIR)/getdtablesize.o: ./src/unistd/getdtablesize.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/getdtablesize.c -o $@
	echo [CC] $@
libc.a(ctermid.o): $(OBJDIR)/ctermid.o
$(OBJDIR)/ctermid.o: ./src/unistd/ctermid.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/ctermid.c -o $@
	echo [CC] $@
libc.a(link.o): $(OBJDIR)/link.o
$(OBJDIR)/link.o: ./src/unistd/link.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/link.c -o $@
	echo [CC] $@
libc.a(tcsetpgrp.o): $(OBJDIR)/tcsetpgrp.o
$(OBJDIR)/tcsetpgrp.o: ./src/unistd/tcsetpgrp.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/tcsetpgrp.c -o $@
	echo [CC] $@
libc.a(optind.o): $(OBJDIR)/optind.o
$(OBJDIR)/optind.o: ./src/unistd/optind.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/optind.c -o $@
	echo [CC] $@
libc.a(readlink.o): $(OBJDIR)/readlink.o
$(OBJDIR)/readlink.o: ./src/unistd/readlink.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/readlink.c -o $@
	echo [CC] $@
libc.a(truncate.o): $(OBJDIR)/truncate.o
$(OBJDIR)/truncate.o: ./src/unistd/truncate.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/truncate.c -o $@
	echo [CC] $@
libc.a(fdatasync.o): $(OBJDIR)/fdatasync.o
$(OBJDIR)/fdatasync.o: ./src/unistd/fdatasync.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/fdatasync.c -o $@
	echo [CC] $@
libc.a(fork.o): $(OBJDIR)/fork.o
$(OBJDIR)/fork.o: ./src/unistd/fork.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/fork.c -o $@
	echo [CC] $@
libc.a(fchdir.o): $(OBJDIR)/fchdir.o
$(OBJDIR)/fchdir.o: ./src/unistd/fchdir.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/fchdir.c -o $@
	echo [CC] $@
libc.a(getpgid.o): $(OBJDIR)/getpgid.o
$(OBJDIR)/getpgid.o: ./src/unistd/getpgid.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/getpgid.c -o $@
	echo [CC] $@
libc.a(execlp.o): $(OBJDIR)/execlp.o
$(OBJDIR)/execlp.o: ./src/unistd/execlp.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/execlp.c -o $@
	echo [CC] $@
libc.a(pipe.o): $(OBJDIR)/pipe.o
$(OBJDIR)/pipe.o: ./src/unistd/pipe.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/pipe.c -o $@
	echo [CC] $@
libc.a(cuserid.o): $(OBJDIR)/cuserid.o
$(OBJDIR)/cuserid.o: ./src/unistd/cuserid.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/cuserid.c -o $@
	echo [CC] $@
libc.a(confstr.o): $(OBJDIR)/confstr.o
$(OBJDIR)/confstr.o: ./src/unistd/confstr.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/confstr.c -o $@
	echo [CC] $@
libc.a(getgroups.o): $(OBJDIR)/getgroups.o
$(OBJDIR)/getgroups.o: ./src/unistd/getgroups.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/getgroups.c -o $@
	echo [CC] $@
libc.a(chown.o): $(OBJDIR)/chown.o
$(OBJDIR)/chown.o: ./src/unistd/chown.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/chown.c -o $@
	echo [CC] $@
libc.a(getsid.o): $(OBJDIR)/getsid.o
$(OBJDIR)/getsid.o: ./src/unistd/getsid.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/getsid.c -o $@
	echo [CC] $@
libc.a(lockf.o): $(OBJDIR)/lockf.o
$(OBJDIR)/lockf.o: ./src/unistd/lockf.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/lockf.c -o $@
	echo [CC] $@
libc.a(getpid.o): $(OBJDIR)/getpid.o
$(OBJDIR)/getpid.o: ./src/unistd/getpid.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/getpid.c -o $@
	echo [CC] $@
libc.a(sysconf.o): $(OBJDIR)/sysconf.o
$(OBJDIR)/sysconf.o: ./src/unistd/sysconf.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/sysconf.c -o $@
	echo [CC] $@
libc.a(dup.o): $(OBJDIR)/dup.o
$(OBJDIR)/dup.o: ./src/unistd/dup.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/dup.c -o $@
	echo [CC] $@
libc.a(getgid.o): $(OBJDIR)/getgid.o
$(OBJDIR)/getgid.o: ./src/unistd/getgid.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/getgid.c -o $@
	echo [CC] $@
libc.a(setreuid.o): $(OBJDIR)/setreuid.o
$(OBJDIR)/setreuid.o: ./src/unistd/setreuid.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/setreuid.c -o $@
	echo [CC] $@
libc.a(sleep.o): $(OBJDIR)/sleep.o
$(OBJDIR)/sleep.o: ./src/unistd/sleep.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/sleep.c -o $@
	echo [CC] $@
libc.a(strncat.o): $(OBJDIR)/strncat.o
$(OBJDIR)/strncat.o: ./src/string/strncat.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/string/strncat.c -o $@
	echo [CC] $@
libc.a(strncmp.o): $(OBJDIR)/strncmp.o
$(OBJDIR)/strncmp.o: ./src/string/strncmp.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/string/strncmp.c -o $@
	echo [CC] $@
libc.a(memmove.o): $(OBJDIR)/memmove.o
$(OBJDIR)/memmove.o: ./src/string/memmove.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/string/memmove.c -o $@
	echo [CC] $@
libc.a(strchr.o): $(OBJDIR)/strchr.o
$(OBJDIR)/strchr.o: ./src/string/strchr.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/string/strchr.c -o $@
	echo [CC] $@
libc.a(strtok.o): $(OBJDIR)/strtok.o
$(OBJDIR)/strtok.o: ./src/string/strtok.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/string/strtok.c -o $@
	echo [CC] $@
libc.a(memccpy.o): $(OBJDIR)/memccpy.o
$(OBJDIR)/memccpy.o: ./src/string/memccpy.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/string/memccpy.c -o $@
	echo [CC] $@
libc.a(strstr.o): $(OBJDIR)/strstr.o
$(OBJDIR)/strstr.o: ./src/string/strstr.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/string/strstr.c -o $@
	echo [CC] $@
libc.a(memcmp.o): $(OBJDIR)/memcmp.o
$(OBJDIR)/memcmp.o: ./src/string/memcmp.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/string/memcmp.c -o $@
	echo [CC] $@
libc.a(strcat.o): $(OBJDIR)/strcat.o
$(OBJDIR)/strcat.o: ./src/string/strcat.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/string/strcat.c -o $@
	echo [CC] $@
libc.a(memchr.o): $(OBJDIR)/memchr.o
$(OBJDIR)/memchr.o: ./src/string/memchr.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/string/memchr.c -o $@
	echo [CC] $@
libc.a(strdup.o): $(OBJDIR)/strdup.o
$(OBJDIR)/strdup.o: ./src/string/strdup.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/string/strdup.c -o $@
	echo [CC] $@
libc.a(strcmp.o): $(OBJDIR)/strcmp.o
$(OBJDIR)/strcmp.o: ./src/string/strcmp.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/string/strcmp.c -o $@
	echo [CC] $@
libc.a(strspn.o): $(OBJDIR)/strspn.o
$(OBJDIR)/strspn.o: ./src/string/strspn.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/string/strspn.c -o $@
	echo [CC] $@
libc.a(strncpy.o): $(OBJDIR)/strncpy.o
$(OBJDIR)/strncpy.o: ./src/string/strncpy.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/string/strncpy.c -o $@
	echo [CC] $@
libc.a(strxfrm.o): $(OBJDIR)/strxfrm.o
$(OBJDIR)/strxfrm.o: ./src/string/strxfrm.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/string/strxfrm.c -o $@
	echo [CC] $@
libc.a(memcpy.o): $(OBJDIR)/memcpy.o
$(OBJDIR)/memcpy.o: ./src/string/memcpy.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/string/memcpy.c -o $@
	echo [CC] $@
libc.a(memset.o): $(OBJDIR)/memset.o
$(OBJDIR)/memset.o: ./src/string/memset.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/string/memset.c -o $@
	echo [CC] $@
libc.a(strcpy.o): $(OBJDIR)/strcpy.o
$(OBJDIR)/strcpy.o: ./src/string/strcpy.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/string/strcpy.c -o $@
	echo [CC] $@
libc.a(strcoll.o): $(OBJDIR)/strcoll.o
$(OBJDIR)/strcoll.o: ./src/string/strcoll.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/string/strcoll.c -o $@
	echo [CC] $@
libc.a(strpbrk.o): $(OBJDIR)/strpbrk.o
$(OBJDIR)/strpbrk.o: ./src/string/strpbrk.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/string/strpbrk.c -o $@
	echo [CC] $@
libc.a(strcspn.o): $(OBJDIR)/strcspn.o
$(OBJDIR)/strcspn.o: ./src/string/strcspn.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/string/strcspn.c -o $@
	echo [CC] $@
libc.a(strlen.o): $(OBJDIR)/strlen.o
$(OBJDIR)/strlen.o: ./src/string/strlen.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/string/strlen.c -o $@
	echo [CC] $@
libc.a(strerror.o): $(OBJDIR)/strerror.o
$(OBJDIR)/strerror.o: ./src/string/strerror.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/string/strerror.c -o $@
	echo [CC] $@
libc.a(strrchr.o): $(OBJDIR)/strrchr.o
$(OBJDIR)/strrchr.o: ./src/string/strrchr.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/string/strrchr.c -o $@
	echo [CC] $@
libc.a(ulimit.o): $(OBJDIR)/ulimit.o
$(OBJDIR)/ulimit.o: ./src/ulimit/ulimit.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/ulimit/ulimit.c -o $@
	echo [CC] $@
libc.a(catopen.o): $(OBJDIR)/catopen.o
$(OBJDIR)/catopen.o: ./src/nl_types/catopen.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/nl_types/catopen.c -o $@
	echo [CC] $@
libc.a(catgets.o): $(OBJDIR)/catgets.o
$(OBJDIR)/catgets.o: ./src/nl_types/catgets.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/nl_types/catgets.c -o $@
	echo [CC] $@
libc.a(catclose.o): $(OBJDIR)/catclose.o
$(OBJDIR)/catclose.o: ./src/nl_types/catclose.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/nl_types/catclose.c -o $@
	echo [CC] $@
libc.a(iscntrl.o): $(OBJDIR)/iscntrl.o
$(OBJDIR)/iscntrl.o: ./src/ctype/iscntrl.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/ctype/iscntrl.c -o $@
	echo [CC] $@
libc.a(isalnum.o): $(OBJDIR)/isalnum.o
$(OBJDIR)/isalnum.o: ./src/ctype/isalnum.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/ctype/isalnum.c -o $@
	echo [CC] $@
libc.a(tolower.o): $(OBJDIR)/tolower.o
$(OBJDIR)/tolower.o: ./src/ctype/tolower.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/ctype/tolower.c -o $@
	echo [CC] $@
libc.a(isprint.o): $(OBJDIR)/isprint.o
$(OBJDIR)/isprint.o: ./src/ctype/isprint.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/ctype/isprint.c -o $@
	echo [CC] $@
libc.a(islower.o): $(OBJDIR)/islower.o
$(OBJDIR)/islower.o: ./src/ctype/islower.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/ctype/islower.c -o $@
	echo [CC] $@
libc.a(isxdigit.o): $(OBJDIR)/isxdigit.o
$(OBJDIR)/isxdigit.o: ./src/ctype/isxdigit.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/ctype/isxdigit.c -o $@
	echo [CC] $@
libc.a(isblank.o): $(OBJDIR)/isblank.o
$(OBJDIR)/isblank.o: ./src/ctype/isblank.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/ctype/isblank.c -o $@
	echo [CC] $@
libc.a(toascii.o): $(OBJDIR)/toascii.o
$(OBJDIR)/toascii.o: ./src/ctype/toascii.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/ctype/toascii.c -o $@
	echo [CC] $@
libc.a(isalpha.o): $(OBJDIR)/isalpha.o
$(OBJDIR)/isalpha.o: ./src/ctype/isalpha.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/ctype/isalpha.c -o $@
	echo [CC] $@
libc.a(isascii.o): $(OBJDIR)/isascii.o
$(OBJDIR)/isascii.o: ./src/ctype/isascii.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/ctype/isascii.c -o $@
	echo [CC] $@
libc.a(isupper.o): $(OBJDIR)/isupper.o
$(OBJDIR)/isupper.o: ./src/ctype/isupper.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/ctype/isupper.c -o $@
	echo [CC] $@
libc.a(isspace.o): $(OBJDIR)/isspace.o
$(OBJDIR)/isspace.o: ./src/ctype/isspace.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/ctype/isspace.c -o $@
	echo [CC] $@
libc.a(ispunct.o): $(OBJDIR)/ispunct.o
$(OBJDIR)/ispunct.o: ./src/ctype/ispunct.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/ctype/ispunct.c -o $@
	echo [CC] $@
libc.a(toupper.o): $(OBJDIR)/toupper.o
$(OBJDIR)/toupper.o: ./src/ctype/toupper.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/ctype/toupper.c -o $@
	echo [CC] $@
libc.a(isgraph.o): $(OBJDIR)/isgraph.o
$(OBJDIR)/isgraph.o: ./src/ctype/isgraph.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/ctype/isgraph.c -o $@
	echo [CC] $@
libc.a(isdigit.o): $(OBJDIR)/isdigit.o
$(OBJDIR)/isdigit.o: ./src/ctype/isdigit.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/ctype/isdigit.c -o $@
	echo [CC] $@
libc.a(nl_langinfo.o): $(OBJDIR)/nl_langinfo.o
$(OBJDIR)/nl_langinfo.o: ./src/langinfo/nl_langinfo.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/langinfo/nl_langinfo.c -o $@
	echo [CC] $@
libc.a(getgrnam.o): $(OBJDIR)/getgrnam.o
$(OBJDIR)/getgrnam.o: ./src/grp/getgrnam.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/grp/getgrnam.c -o $@
	echo [CC] $@
libc.a(getgrgid.o): $(OBJDIR)/getgrgid.o
$(OBJDIR)/getgrgid.o: ./src/grp/getgrgid.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/grp/getgrgid.c -o $@
	echo [CC] $@
libc.a(endgrent.o): $(OBJDIR)/endgrent.o
$(OBJDIR)/endgrent.o: ./src/grp/endgrent.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/grp/endgrent.c -o $@
	echo [CC] $@
libc.a(getgrent.o): $(OBJDIR)/getgrent.o
$(OBJDIR)/getgrent.o: ./src/grp/getgrent.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/grp/getgrent.c -o $@
	echo [CC] $@
libc.a(setgrent.o): $(OBJDIR)/setgrent.o
$(OBJDIR)/setgrent.o: ./src/grp/setgrent.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/grp/setgrent.c -o $@
	echo [CC] $@
libc.a(strfmon.o): $(OBJDIR)/strfmon.o
$(OBJDIR)/strfmon.o: ./src/monetary/strfmon.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/monetary/strfmon.c -o $@
	echo [CC] $@
libc.a(iconv_close.o): $(OBJDIR)/iconv_close.o
$(OBJDIR)/iconv_close.o: ./src/iconv/iconv_close.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/iconv/iconv_close.c -o $@
	echo [CC] $@
libc.a(iconv.o): $(OBJDIR)/iconv.o
$(OBJDIR)/iconv.o: ./src/iconv/iconv.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/iconv/iconv.c -o $@
	echo [CC] $@
libc.a(iconv_open.o): $(OBJDIR)/iconv_open.o
$(OBJDIR)/iconv_open.o: ./src/iconv/iconv_open.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/iconv/iconv_open.c -o $@
	echo [CC] $@
libc.a(telldir.o): $(OBJDIR)/telldir.o
$(OBJDIR)/telldir.o: ./src/dirent/telldir.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/dirent/telldir.c -o $@
	echo [CC] $@
libc.a(closedir.o): $(OBJDIR)/closedir.o
$(OBJDIR)/closedir.o: ./src/dirent/closedir.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/dirent/closedir.c -o $@
	echo [CC] $@
libc.a(opendir.o): $(OBJDIR)/opendir.o
$(OBJDIR)/opendir.o: ./src/dirent/opendir.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/dirent/opendir.c -o $@
	echo [CC] $@
libc.a(rewinddir.o): $(OBJDIR)/rewinddir.o
$(OBJDIR)/rewinddir.o: ./src/dirent/rewinddir.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/dirent/rewinddir.c -o $@
	echo [CC] $@
libc.a(seekdir.o): $(OBJDIR)/seekdir.o
$(OBJDIR)/seekdir.o: ./src/dirent/seekdir.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/dirent/seekdir.c -o $@
	echo [CC] $@
libc.a(readdir.o): $(OBJDIR)/readdir.o
$(OBJDIR)/readdir.o: ./src/dirent/readdir.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/dirent/readdir.c -o $@
	echo [CC] $@
libm.a(cexp.o): $(OBJDIR)/cexp.o
$(OBJDIR)/cexp.o: ./src/complex/cexp.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/complex/cexp.c -o $@
	echo [CC] $@
libm.a(cimag.o): $(OBJDIR)/cimag.o
$(OBJDIR)/cimag.o: ./src/complex/cimag.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/complex/cimag.c -o $@
	echo [CC] $@
libm.a(ccosh.o): $(OBJDIR)/ccosh.o
$(OBJDIR)/ccosh.o: ./src/complex/ccosh.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/complex/ccosh.c -o $@
	echo [CC] $@
libm.a(catanh.o): $(OBJDIR)/catanh.o
$(OBJDIR)/catanh.o: ./src/complex/catanh.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/complex/catanh.c -o $@
	echo [CC] $@
libm.a(cacosh.o): $(OBJDIR)/cacosh.o
$(OBJDIR)/cacosh.o: ./src/complex/cacosh.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/complex/cacosh.c -o $@
	echo [CC] $@
libm.a(cproj.o): $(OBJDIR)/cproj.o
$(OBJDIR)/cproj.o: ./src/complex/cproj.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/complex/cproj.c -o $@
	echo [CC] $@
libm.a(carg.o): $(OBJDIR)/carg.o
$(OBJDIR)/carg.o: ./src/complex/carg.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/complex/carg.c -o $@
	echo [CC] $@
libm.a(csqrt.o): $(OBJDIR)/csqrt.o
$(OBJDIR)/csqrt.o: ./src/complex/csqrt.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/complex/csqrt.c -o $@
	echo [CC] $@
libm.a(csin.o): $(OBJDIR)/csin.o
$(OBJDIR)/csin.o: ./src/complex/csin.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/complex/csin.c -o $@
	echo [CC] $@
libm.a(cpow.o): $(OBJDIR)/cpow.o
$(OBJDIR)/cpow.o: ./src/complex/cpow.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/complex/cpow.c -o $@
	echo [CC] $@
libm.a(casin.o): $(OBJDIR)/casin.o
$(OBJDIR)/casin.o: ./src/complex/casin.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/complex/casin.c -o $@
	echo [CC] $@
libm.a(creal.o): $(OBJDIR)/creal.o
$(OBJDIR)/creal.o: ./src/complex/creal.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/complex/creal.c -o $@
	echo [CC] $@
libm.a(conj.o): $(OBJDIR)/conj.o
$(OBJDIR)/conj.o: ./src/complex/conj.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/complex/conj.c -o $@
	echo [CC] $@
libm.a(ctanh.o): $(OBJDIR)/ctanh.o
$(OBJDIR)/ctanh.o: ./src/complex/ctanh.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/complex/ctanh.c -o $@
	echo [CC] $@
libm.a(ccos.o): $(OBJDIR)/ccos.o
$(OBJDIR)/ccos.o: ./src/complex/ccos.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/complex/ccos.c -o $@
	echo [CC] $@
libm.a(catan.o): $(OBJDIR)/catan.o
$(OBJDIR)/catan.o: ./src/complex/catan.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/complex/catan.c -o $@
	echo [CC] $@
libm.a(ctan.o): $(OBJDIR)/ctan.o
$(OBJDIR)/ctan.o: ./src/complex/ctan.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/complex/ctan.c -o $@
	echo [CC] $@
libm.a(cacos.o): $(OBJDIR)/cacos.o
$(OBJDIR)/cacos.o: ./src/complex/cacos.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/complex/cacos.c -o $@
	echo [CC] $@
libm.a(casinh.o): $(OBJDIR)/casinh.o
$(OBJDIR)/casinh.o: ./src/complex/casinh.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/complex/casinh.c -o $@
	echo [CC] $@
libm.a(csinh.o): $(OBJDIR)/csinh.o
$(OBJDIR)/csinh.o: ./src/complex/csinh.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/complex/csinh.c -o $@
	echo [CC] $@
libm.a(cabs.o): $(OBJDIR)/cabs.o
$(OBJDIR)/cabs.o: ./src/complex/cabs.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/complex/cabs.c -o $@
	echo [CC] $@
libm.a(clog.o): $(OBJDIR)/clog.o
$(OBJDIR)/clog.o: ./src/complex/clog.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/complex/clog.c -o $@
	echo [CC] $@
libc.a(getpwent.o): $(OBJDIR)/getpwent.o
$(OBJDIR)/getpwent.o: ./src/pwd/getpwent.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/pwd/getpwent.c -o $@
	echo [CC] $@
libc.a(setpwent.o): $(OBJDIR)/setpwent.o
$(OBJDIR)/setpwent.o: ./src/pwd/setpwent.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/pwd/setpwent.c -o $@
	echo [CC] $@
libc.a(getpwnam.o): $(OBJDIR)/getpwnam.o
$(OBJDIR)/getpwnam.o: ./src/pwd/getpwnam.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/pwd/getpwnam.c -o $@
	echo [CC] $@
libc.a(getpwuid.o): $(OBJDIR)/getpwuid.o
$(OBJDIR)/getpwuid.o: ./src/pwd/getpwuid.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/pwd/getpwuid.c -o $@
	echo [CC] $@
libc.a(endpwent.o): $(OBJDIR)/endpwent.o
$(OBJDIR)/endpwent.o: ./src/pwd/endpwent.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/pwd/endpwent.c -o $@
	echo [CC] $@
libc.a(__assert.o): $(OBJDIR)/__assert.o
$(OBJDIR)/__assert.o: ./src/assert/__assert.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/assert/__assert.c -o $@
	echo [CC] $@
libcurses.a(tgetent.o): $(OBJDIR)/tgetent.o
$(OBJDIR)/tgetent.o: ./src/term/tgetent.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/term/tgetent.c -o $@
	echo [CC] $@
libcurses.a(set_curterm.o): $(OBJDIR)/set_curterm.o
$(OBJDIR)/set_curterm.o: ./src/term/set_curterm.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/term/set_curterm.c -o $@
	echo [CC] $@
libcurses.a(tgetnum.o): $(OBJDIR)/tgetnum.o
$(OBJDIR)/tgetnum.o: ./src/term/tgetnum.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/term/tgetnum.c -o $@
	echo [CC] $@
libcurses.a(tputs.o): $(OBJDIR)/tputs.o
$(OBJDIR)/tputs.o: ./src/term/tputs.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/term/tputs.c -o $@
	echo [CC] $@
libcurses.a(del_curterm.o): $(OBJDIR)/del_curterm.o
$(OBJDIR)/del_curterm.o: ./src/term/del_curterm.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/term/del_curterm.c -o $@
	echo [CC] $@
libcurses.a(tgetstr.o): $(OBJDIR)/tgetstr.o
$(OBJDIR)/tgetstr.o: ./src/term/tgetstr.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/term/tgetstr.c -o $@
	echo [CC] $@
libcurses.a(tigetflag.o): $(OBJDIR)/tigetflag.o
$(OBJDIR)/tigetflag.o: ./src/term/tigetflag.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/term/tigetflag.c -o $@
	echo [CC] $@
libcurses.a(tparm.o): $(OBJDIR)/tparm.o
$(OBJDIR)/tparm.o: ./src/term/tparm.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/term/tparm.c -o $@
	echo [CC] $@
libcurses.a(tgetflag.o): $(OBJDIR)/tgetflag.o
$(OBJDIR)/tgetflag.o: ./src/term/tgetflag.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/term/tgetflag.c -o $@
	echo [CC] $@
libcurses.a(tigetnum.o): $(OBJDIR)/tigetnum.o
$(OBJDIR)/tigetnum.o: ./src/term/tigetnum.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/term/tigetnum.c -o $@
	echo [CC] $@
libcurses.a(tiparm.o): $(OBJDIR)/tiparm.o
$(OBJDIR)/tiparm.o: ./src/term/tiparm.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/term/tiparm.c -o $@
	echo [CC] $@
libcurses.a(tgoto.o): $(OBJDIR)/tgoto.o
$(OBJDIR)/tgoto.o: ./src/term/tgoto.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/term/tgoto.c -o $@
	echo [CC] $@
libcurses.a(restartterm.o): $(OBJDIR)/restartterm.o
$(OBJDIR)/restartterm.o: ./src/term/restartterm.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/term/restartterm.c -o $@
	echo [CC] $@
libcurses.a(putp.o): $(OBJDIR)/putp.o
$(OBJDIR)/putp.o: ./src/term/putp.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/term/putp.c -o $@
	echo [CC] $@
libcurses.a(tigetstr.o): $(OBJDIR)/tigetstr.o
$(OBJDIR)/tigetstr.o: ./src/term/tigetstr.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/term/tigetstr.c -o $@
	echo [CC] $@
libcurses.a(setupterm.o): $(OBJDIR)/setupterm.o
$(OBJDIR)/setupterm.o: ./src/term/setupterm.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/term/setupterm.c -o $@
	echo [CC] $@
libcurses.a(cur_term.o): $(OBJDIR)/cur_term.o
$(OBJDIR)/cur_term.o: ./src/term/cur_term.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/term/cur_term.c -o $@
	echo [CC] $@
libc.a(setlogmask.o): $(OBJDIR)/setlogmask.o
$(OBJDIR)/setlogmask.o: ./src/syslog/setlogmask.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/syslog/setlogmask.c -o $@
	echo [CC] $@
libc.a(syslog.o): $(OBJDIR)/syslog.o
$(OBJDIR)/syslog.o: ./src/syslog/syslog.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/syslog/syslog.c -o $@
	echo [CC] $@
libc.a(openlog.o): $(OBJDIR)/openlog.o
$(OBJDIR)/openlog.o: ./src/syslog/openlog.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/syslog/openlog.c -o $@
	echo [CC] $@
libc.a(closelog.o): $(OBJDIR)/closelog.o
$(OBJDIR)/closelog.o: ./src/syslog/closelog.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/syslog/closelog.c -o $@
	echo [CC] $@
libc.a(__errno.o): $(OBJDIR)/__errno.o
$(OBJDIR)/__errno.o: ./src/errno/__errno.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/errno/__errno.c -o $@
	echo [CC] $@
libc.a(cfsetospeed.o): $(OBJDIR)/cfsetospeed.o
$(OBJDIR)/cfsetospeed.o: ./src/termios/cfsetospeed.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/termios/cfsetospeed.c -o $@
	echo [CC] $@
libc.a(tcsetattr.o): $(OBJDIR)/tcsetattr.o
$(OBJDIR)/tcsetattr.o: ./src/termios/tcsetattr.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/termios/tcsetattr.c -o $@
	echo [CC] $@
libc.a(tcgetsid.o): $(OBJDIR)/tcgetsid.o
$(OBJDIR)/tcgetsid.o: ./src/termios/tcgetsid.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/termios/tcgetsid.c -o $@
	echo [CC] $@
libc.a(tcsendbreak.o): $(OBJDIR)/tcsendbreak.o
$(OBJDIR)/tcsendbreak.o: ./src/termios/tcsendbreak.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/termios/tcsendbreak.c -o $@
	echo [CC] $@
libc.a(tcflow.o): $(OBJDIR)/tcflow.o
$(OBJDIR)/tcflow.o: ./src/termios/tcflow.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/termios/tcflow.c -o $@
	echo [CC] $@
libc.a(tcgetattr.o): $(OBJDIR)/tcgetattr.o
$(OBJDIR)/tcgetattr.o: ./src/termios/tcgetattr.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/termios/tcgetattr.c -o $@
	echo [CC] $@
libc.a(cfgetispeed.o): $(OBJDIR)/cfgetispeed.o
$(OBJDIR)/cfgetispeed.o: ./src/termios/cfgetispeed.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/termios/cfgetispeed.c -o $@
	echo [CC] $@
libc.a(tcdrain.o): $(OBJDIR)/tcdrain.o
$(OBJDIR)/tcdrain.o: ./src/termios/tcdrain.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/termios/tcdrain.c -o $@
	echo [CC] $@
libc.a(cfsetispeed.o): $(OBJDIR)/cfsetispeed.o
$(OBJDIR)/cfsetispeed.o: ./src/termios/cfsetispeed.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/termios/cfsetispeed.c -o $@
	echo [CC] $@
libc.a(tcflush.o): $(OBJDIR)/tcflush.o
$(OBJDIR)/tcflush.o: ./src/termios/tcflush.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/termios/tcflush.c -o $@
	echo [CC] $@
libc.a(cfgetospeed.o): $(OBJDIR)/cfgetospeed.o
$(OBJDIR)/cfgetospeed.o: ./src/termios/cfgetospeed.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/termios/cfgetospeed.c -o $@
	echo [CC] $@
librt.a(mq_close.o): $(OBJDIR)/mq_close.o
$(OBJDIR)/mq_close.o: ./src/mqueue/mq_close.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/mqueue/mq_close.c -o $@
	echo [CC] $@
librt.a(mq_send.o): $(OBJDIR)/mq_send.o
$(OBJDIR)/mq_send.o: ./src/mqueue/mq_send.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/mqueue/mq_send.c -o $@
	echo [CC] $@
librt.a(mq_unlink.o): $(OBJDIR)/mq_unlink.o
$(OBJDIR)/mq_unlink.o: ./src/mqueue/mq_unlink.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/mqueue/mq_unlink.c -o $@
	echo [CC] $@
librt.a(mq_notify.o): $(OBJDIR)/mq_notify.o
$(OBJDIR)/mq_notify.o: ./src/mqueue/mq_notify.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/mqueue/mq_notify.c -o $@
	echo [CC] $@
librt.a(mq_open.o): $(OBJDIR)/mq_open.o
$(OBJDIR)/mq_open.o: ./src/mqueue/mq_open.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/mqueue/mq_open.c -o $@
	echo [CC] $@
librt.a(mq_receive.o): $(OBJDIR)/mq_receive.o
$(OBJDIR)/mq_receive.o: ./src/mqueue/mq_receive.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/mqueue/mq_receive.c -o $@
	echo [CC] $@
librt.a(mq_getattr.o): $(OBJDIR)/mq_getattr.o
$(OBJDIR)/mq_getattr.o: ./src/mqueue/mq_getattr.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/mqueue/mq_getattr.c -o $@
	echo [CC] $@
librt.a(mq_setattr.o): $(OBJDIR)/mq_setattr.o
$(OBJDIR)/mq_setattr.o: ./src/mqueue/mq_setattr.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/mqueue/mq_setattr.c -o $@
	echo [CC] $@
librt.a(sched_getparam.o): $(OBJDIR)/sched_getparam.o
$(OBJDIR)/sched_getparam.o: ./src/sched/sched_getparam.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/sched/sched_getparam.c -o $@
	echo [CC] $@
librt.a(sched_get_priority_max.o): $(OBJDIR)/sched_get_priority_max.o
$(OBJDIR)/sched_get_priority_max.o: ./src/sched/sched_get_priority_max.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/sched/sched_get_priority_max.c -o $@
	echo [CC] $@
librt.a(sched_getscheduler.o): $(OBJDIR)/sched_getscheduler.o
$(OBJDIR)/sched_getscheduler.o: ./src/sched/sched_getscheduler.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/sched/sched_getscheduler.c -o $@
	echo [CC] $@
librt.a(sched_rr_get_interval.o): $(OBJDIR)/sched_rr_get_interval.o
$(OBJDIR)/sched_rr_get_interval.o: ./src/sched/sched_rr_get_interval.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/sched/sched_rr_get_interval.c -o $@
	echo [CC] $@
librt.a(sched_get_priority_min.o): $(OBJDIR)/sched_get_priority_min.o
$(OBJDIR)/sched_get_priority_min.o: ./src/sched/sched_get_priority_min.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/sched/sched_get_priority_min.c -o $@
	echo [CC] $@
librt.a(sched_yield.o): $(OBJDIR)/sched_yield.o
$(OBJDIR)/sched_yield.o: ./src/sched/sched_yield.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/sched/sched_yield.c -o $@
	echo [CC] $@
librt.a(sched_setscheduler.o): $(OBJDIR)/sched_setscheduler.o
$(OBJDIR)/sched_setscheduler.o: ./src/sched/sched_setscheduler.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/sched/sched_setscheduler.c -o $@
	echo [CC] $@
librt.a(sched_setparam.o): $(OBJDIR)/sched_setparam.o
$(OBJDIR)/sched_setparam.o: ./src/sched/sched_setparam.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/sched/sched_setparam.c -o $@
	echo [CC] $@
libc.a(fdetach.o): $(OBJDIR)/fdetach.o
$(OBJDIR)/fdetach.o: ./src/stropts/fdetach.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stropts/fdetach.c -o $@
	echo [CC] $@
libc.a(isastream.o): $(OBJDIR)/isastream.o
$(OBJDIR)/isastream.o: ./src/stropts/isastream.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stropts/isastream.c -o $@
	echo [CC] $@
libc.a(getmsg.o): $(OBJDIR)/getmsg.o
$(OBJDIR)/getmsg.o: ./src/stropts/getmsg.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stropts/getmsg.c -o $@
	echo [CC] $@
libc.a(putmsg.o): $(OBJDIR)/putmsg.o
$(OBJDIR)/putmsg.o: ./src/stropts/putmsg.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stropts/putmsg.c -o $@
	echo [CC] $@
libc.a(fattach.o): $(OBJDIR)/fattach.o
$(OBJDIR)/fattach.o: ./src/stropts/fattach.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stropts/fattach.c -o $@
	echo [CC] $@
libc.a(getpmsg.o): $(OBJDIR)/getpmsg.o
$(OBJDIR)/getpmsg.o: ./src/stropts/getpmsg.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stropts/getpmsg.c -o $@
	echo [CC] $@
libc.a(ioctl.o): $(OBJDIR)/ioctl.o
$(OBJDIR)/ioctl.o: ./src/stropts/ioctl.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stropts/ioctl.c -o $@
	echo [CC] $@
libc.a(putpmsg.o): $(OBJDIR)/putpmsg.o
$(OBJDIR)/putpmsg.o: ./src/stropts/putpmsg.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stropts/putpmsg.c -o $@
	echo [CC] $@
libc.a(wcsrtombs.o): $(OBJDIR)/wcsrtombs.o
$(OBJDIR)/wcsrtombs.o: ./src/wchar/wcsrtombs.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wchar/wcsrtombs.c -o $@
	echo [CC] $@
libc.a(wcsncmp.o): $(OBJDIR)/wcsncmp.o
$(OBJDIR)/wcsncmp.o: ./src/wchar/wcsncmp.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wchar/wcsncmp.c -o $@
	echo [CC] $@
libc.a(wcstok.o): $(OBJDIR)/wcstok.o
$(OBJDIR)/wcstok.o: ./src/wchar/wcstok.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wchar/wcstok.c -o $@
	echo [CC] $@
libc.a(wcsxfrm.o): $(OBJDIR)/wcsxfrm.o
$(OBJDIR)/wcsxfrm.o: ./src/wchar/wcsxfrm.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wchar/wcsxfrm.c -o $@
	echo [CC] $@
libc.a(wcscspn.o): $(OBJDIR)/wcscspn.o
$(OBJDIR)/wcscspn.o: ./src/wchar/wcscspn.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wchar/wcscspn.c -o $@
	echo [CC] $@
libc.a(wcstof.o): $(OBJDIR)/wcstof.o
$(OBJDIR)/wcstof.o: ./src/wchar/wcstof.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wchar/wcstof.c -o $@
	echo [CC] $@
libc.a(wcsncpy.o): $(OBJDIR)/wcsncpy.o
$(OBJDIR)/wcsncpy.o: ./src/wchar/wcsncpy.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wchar/wcsncpy.c -o $@
	echo [CC] $@
libc.a(fgetwc.o): $(OBJDIR)/fgetwc.o
$(OBJDIR)/fgetwc.o: ./src/wchar/fgetwc.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wchar/fgetwc.c -o $@
	echo [CC] $@
libc.a(mbsinit.o): $(OBJDIR)/mbsinit.o
$(OBJDIR)/mbsinit.o: ./src/wchar/mbsinit.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wchar/mbsinit.c -o $@
	echo [CC] $@
libc.a(getwc.o): $(OBJDIR)/getwc.o
$(OBJDIR)/getwc.o: ./src/wchar/getwc.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wchar/getwc.c -o $@
	echo [CC] $@
libc.a(wcsftime.o): $(OBJDIR)/wcsftime.o
$(OBJDIR)/wcsftime.o: ./src/wchar/wcsftime.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wchar/wcsftime.c -o $@
	echo [CC] $@
libc.a(mbsrtowcs.o): $(OBJDIR)/mbsrtowcs.o
$(OBJDIR)/mbsrtowcs.o: ./src/wchar/mbsrtowcs.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wchar/mbsrtowcs.c -o $@
	echo [CC] $@
libc.a(wcwidth.o): $(OBJDIR)/wcwidth.o
$(OBJDIR)/wcwidth.o: ./src/wchar/wcwidth.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wchar/wcwidth.c -o $@
	echo [CC] $@
libc.a(struct_tm.o): $(OBJDIR)/struct_tm.o
$(OBJDIR)/struct_tm.o: ./src/wchar/struct_tm.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wchar/struct_tm.c -o $@
	echo [CC] $@
libc.a(wcscoll.o): $(OBJDIR)/wcscoll.o
$(OBJDIR)/wcscoll.o: ./src/wchar/wcscoll.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wchar/wcscoll.c -o $@
	echo [CC] $@
libc.a(wcstoull.o): $(OBJDIR)/wcstoull.o
$(OBJDIR)/wcstoull.o: ./src/wchar/wcstoull.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wchar/wcstoull.c -o $@
	echo [CC] $@
libc.a(ungetwc.o): $(OBJDIR)/ungetwc.o
$(OBJDIR)/ungetwc.o: ./src/wchar/ungetwc.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wchar/ungetwc.c -o $@
	echo [CC] $@
libc.a(mbrlen.o): $(OBJDIR)/mbrlen.o
$(OBJDIR)/mbrlen.o: ./src/wchar/mbrlen.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wchar/mbrlen.c -o $@
	echo [CC] $@
libc.a(wcscat.o): $(OBJDIR)/wcscat.o
$(OBJDIR)/wcscat.o: ./src/wchar/wcscat.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wchar/wcscat.c -o $@
	echo [CC] $@
libc.a(wcstoll.o): $(OBJDIR)/wcstoll.o
$(OBJDIR)/wcstoll.o: ./src/wchar/wcstoll.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wchar/wcstoll.c -o $@
	echo [CC] $@
libc.a(getwchar.o): $(OBJDIR)/getwchar.o
$(OBJDIR)/getwchar.o: ./src/wchar/getwchar.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wchar/getwchar.c -o $@
	echo [CC] $@
libc.a(wcswidth.o): $(OBJDIR)/wcswidth.o
$(OBJDIR)/wcswidth.o: ./src/wchar/wcswidth.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wchar/wcswidth.c -o $@
	echo [CC] $@
libc.a(wmemset.o): $(OBJDIR)/wmemset.o
$(OBJDIR)/wmemset.o: ./src/wchar/wmemset.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wchar/wmemset.c -o $@
	echo [CC] $@
libc.a(wcsspn.o): $(OBJDIR)/wcsspn.o
$(OBJDIR)/wcsspn.o: ./src/wchar/wcsspn.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wchar/wcsspn.c -o $@
	echo [CC] $@
libc.a(vwscanf.o): $(OBJDIR)/vwscanf.o
$(OBJDIR)/vwscanf.o: ./src/wchar/vwscanf.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wchar/vwscanf.c -o $@
	echo [CC] $@
libc.a(wcsncat.o): $(OBJDIR)/wcsncat.o
$(OBJDIR)/wcsncat.o: ./src/wchar/wcsncat.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wchar/wcsncat.c -o $@
	echo [CC] $@
libc.a(wprintf.o): $(OBJDIR)/wprintf.o
$(OBJDIR)/wprintf.o: ./src/wchar/wprintf.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wchar/wprintf.c -o $@
	echo [CC] $@
libc.a(vfwprintf.o): $(OBJDIR)/vfwprintf.o
$(OBJDIR)/vfwprintf.o: ./src/wchar/vfwprintf.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wchar/vfwprintf.c -o $@
	echo [CC] $@
libc.a(putwc.o): $(OBJDIR)/putwc.o
$(OBJDIR)/putwc.o: ./src/wchar/putwc.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wchar/putwc.c -o $@
	echo [CC] $@
libc.a(wcscpy.o): $(OBJDIR)/wcscpy.o
$(OBJDIR)/wcscpy.o: ./src/wchar/wcscpy.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wchar/wcscpy.c -o $@
	echo [CC] $@
libc.a(swscanf.o): $(OBJDIR)/swscanf.o
$(OBJDIR)/swscanf.o: ./src/wchar/swscanf.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wchar/swscanf.c -o $@
	echo [CC] $@
libc.a(wcswcs.o): $(OBJDIR)/wcswcs.o
$(OBJDIR)/wcswcs.o: ./src/wchar/wcswcs.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wchar/wcswcs.c -o $@
	echo [CC] $@
libc.a(wscanf.o): $(OBJDIR)/wscanf.o
$(OBJDIR)/wscanf.o: ./src/wchar/wscanf.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wchar/wscanf.c -o $@
	echo [CC] $@
libc.a(fwprintf.o): $(OBJDIR)/fwprintf.o
$(OBJDIR)/fwprintf.o: ./src/wchar/fwprintf.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wchar/fwprintf.c -o $@
	echo [CC] $@
libc.a(vswprintf.o): $(OBJDIR)/vswprintf.o
$(OBJDIR)/vswprintf.o: ./src/wchar/vswprintf.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wchar/vswprintf.c -o $@
	echo [CC] $@
libc.a(vswscanf.o): $(OBJDIR)/vswscanf.o
$(OBJDIR)/vswscanf.o: ./src/wchar/vswscanf.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wchar/vswscanf.c -o $@
	echo [CC] $@
libc.a(fputwc.o): $(OBJDIR)/fputwc.o
$(OBJDIR)/fputwc.o: ./src/wchar/fputwc.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wchar/fputwc.c -o $@
	echo [CC] $@
libc.a(fgetws.o): $(OBJDIR)/fgetws.o
$(OBJDIR)/fgetws.o: ./src/wchar/fgetws.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wchar/fgetws.c -o $@
	echo [CC] $@
libc.a(putwchar.o): $(OBJDIR)/putwchar.o
$(OBJDIR)/putwchar.o: ./src/wchar/putwchar.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wchar/putwchar.c -o $@
	echo [CC] $@
libc.a(wcspbrk.o): $(OBJDIR)/wcspbrk.o
$(OBJDIR)/wcspbrk.o: ./src/wchar/wcspbrk.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wchar/wcspbrk.c -o $@
	echo [CC] $@
libc.a(mbrtowc.o): $(OBJDIR)/mbrtowc.o
$(OBJDIR)/mbrtowc.o: ./src/wchar/mbrtowc.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wchar/mbrtowc.c -o $@
	echo [CC] $@
libc.a(wcsrchr.o): $(OBJDIR)/wcsrchr.o
$(OBJDIR)/wcsrchr.o: ./src/wchar/wcsrchr.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wchar/wcsrchr.c -o $@
	echo [CC] $@
libc.a(vwprintf.o): $(OBJDIR)/vwprintf.o
$(OBJDIR)/vwprintf.o: ./src/wchar/vwprintf.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wchar/vwprintf.c -o $@
	echo [CC] $@
libc.a(fwscanf.o): $(OBJDIR)/fwscanf.o
$(OBJDIR)/fwscanf.o: ./src/wchar/fwscanf.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wchar/fwscanf.c -o $@
	echo [CC] $@
libc.a(wcstol.o): $(OBJDIR)/wcstol.o
$(OBJDIR)/wcstol.o: ./src/wchar/wcstol.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wchar/wcstol.c -o $@
	echo [CC] $@
libc.a(wcstold.o): $(OBJDIR)/wcstold.o
$(OBJDIR)/wcstold.o: ./src/wchar/wcstold.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wchar/wcstold.c -o $@
	echo [CC] $@
libc.a(wmemchr.o): $(OBJDIR)/wmemchr.o
$(OBJDIR)/wmemchr.o: ./src/wchar/wmemchr.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wchar/wmemchr.c -o $@
	echo [CC] $@
libc.a(btowc.o): $(OBJDIR)/btowc.o
$(OBJDIR)/btowc.o: ./src/wchar/btowc.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wchar/btowc.c -o $@
	echo [CC] $@
libc.a(wcslen.o): $(OBJDIR)/wcslen.o
$(OBJDIR)/wcslen.o: ./src/wchar/wcslen.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wchar/wcslen.c -o $@
	echo [CC] $@
libc.a(vfwscanf.o): $(OBJDIR)/vfwscanf.o
$(OBJDIR)/vfwscanf.o: ./src/wchar/vfwscanf.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wchar/vfwscanf.c -o $@
	echo [CC] $@
libc.a(fwide.o): $(OBJDIR)/fwide.o
$(OBJDIR)/fwide.o: ./src/wchar/fwide.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wchar/fwide.c -o $@
	echo [CC] $@
libc.a(wcschr.o): $(OBJDIR)/wcschr.o
$(OBJDIR)/wcschr.o: ./src/wchar/wcschr.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wchar/wcschr.c -o $@
	echo [CC] $@
libc.a(wcscmp.o): $(OBJDIR)/wcscmp.o
$(OBJDIR)/wcscmp.o: ./src/wchar/wcscmp.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wchar/wcscmp.c -o $@
	echo [CC] $@
libc.a(wmemmove.o): $(OBJDIR)/wmemmove.o
$(OBJDIR)/wmemmove.o: ./src/wchar/wmemmove.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wchar/wmemmove.c -o $@
	echo [CC] $@
libc.a(wmemcpy.o): $(OBJDIR)/wmemcpy.o
$(OBJDIR)/wmemcpy.o: ./src/wchar/wmemcpy.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wchar/wmemcpy.c -o $@
	echo [CC] $@
libc.a(wmemcmp.o): $(OBJDIR)/wmemcmp.o
$(OBJDIR)/wmemcmp.o: ./src/wchar/wmemcmp.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wchar/wmemcmp.c -o $@
	echo [CC] $@
libc.a(wcstod.o): $(OBJDIR)/wcstod.o
$(OBJDIR)/wcstod.o: ./src/wchar/wcstod.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wchar/wcstod.c -o $@
	echo [CC] $@
libc.a(swprintf.o): $(OBJDIR)/swprintf.o
$(OBJDIR)/swprintf.o: ./src/wchar/swprintf.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wchar/swprintf.c -o $@
	echo [CC] $@
libc.a(wcrtomb.o): $(OBJDIR)/wcrtomb.o
$(OBJDIR)/wcrtomb.o: ./src/wchar/wcrtomb.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wchar/wcrtomb.c -o $@
	echo [CC] $@
libc.a(wctob.o): $(OBJDIR)/wctob.o
$(OBJDIR)/wctob.o: ./src/wchar/wctob.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wchar/wctob.c -o $@
	echo [CC] $@
libc.a(wcstoul.o): $(OBJDIR)/wcstoul.o
$(OBJDIR)/wcstoul.o: ./src/wchar/wcstoul.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wchar/wcstoul.c -o $@
	echo [CC] $@
libc.a(fputws.o): $(OBJDIR)/fputws.o
$(OBJDIR)/fputws.o: ./src/wchar/fputws.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wchar/fputws.c -o $@
	echo [CC] $@
libc.a(wcsstr.o): $(OBJDIR)/wcsstr.o
$(OBJDIR)/wcsstr.o: ./src/wchar/wcsstr.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wchar/wcsstr.c -o $@
	echo [CC] $@
librt.a(sem_open.o): $(OBJDIR)/sem_open.o
$(OBJDIR)/sem_open.o: ./src/semaphore/sem_open.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/semaphore/sem_open.c -o $@
	echo [CC] $@
librt.a(sem_wait.o): $(OBJDIR)/sem_wait.o
$(OBJDIR)/sem_wait.o: ./src/semaphore/sem_wait.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/semaphore/sem_wait.c -o $@
	echo [CC] $@
librt.a(sem_init.o): $(OBJDIR)/sem_init.o
$(OBJDIR)/sem_init.o: ./src/semaphore/sem_init.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/semaphore/sem_init.c -o $@
	echo [CC] $@
librt.a(sem_close.o): $(OBJDIR)/sem_close.o
$(OBJDIR)/sem_close.o: ./src/semaphore/sem_close.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/semaphore/sem_close.c -o $@
	echo [CC] $@
librt.a(sem_getvalue.o): $(OBJDIR)/sem_getvalue.o
$(OBJDIR)/sem_getvalue.o: ./src/semaphore/sem_getvalue.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/semaphore/sem_getvalue.c -o $@
	echo [CC] $@
librt.a(sem_post.o): $(OBJDIR)/sem_post.o
$(OBJDIR)/sem_post.o: ./src/semaphore/sem_post.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/semaphore/sem_post.c -o $@
	echo [CC] $@
librt.a(sem_unlink.o): $(OBJDIR)/sem_unlink.o
$(OBJDIR)/sem_unlink.o: ./src/semaphore/sem_unlink.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/semaphore/sem_unlink.c -o $@
	echo [CC] $@
librt.a(sem_destroy.o): $(OBJDIR)/sem_destroy.o
$(OBJDIR)/sem_destroy.o: ./src/semaphore/sem_destroy.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/semaphore/sem_destroy.c -o $@
	echo [CC] $@
librt.a(sem_trywait.o): $(OBJDIR)/sem_trywait.o
$(OBJDIR)/sem_trywait.o: ./src/semaphore/sem_trywait.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/semaphore/sem_trywait.c -o $@
	echo [CC] $@
libcurses.a(wunctrl.o): $(OBJDIR)/wunctrl.o
$(OBJDIR)/wunctrl.o: ./src/curses/wunctrl.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/wunctrl.c -o $@
	echo [CC] $@
libcurses.a(wsyncup.o): $(OBJDIR)/wsyncup.o
$(OBJDIR)/wsyncup.o: ./src/curses/wsyncup.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/wsyncup.c -o $@
	echo [CC] $@
libcurses.a(baudrate.o): $(OBJDIR)/baudrate.o
$(OBJDIR)/baudrate.o: ./src/curses/baudrate.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/baudrate.c -o $@
	echo [CC] $@
libcurses.a(slk_noutrefresh.o): $(OBJDIR)/slk_noutrefresh.o
$(OBJDIR)/slk_noutrefresh.o: ./src/curses/slk_noutrefresh.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/slk_noutrefresh.c -o $@
	echo [CC] $@
libcurses.a(def_shell_mode.o): $(OBJDIR)/def_shell_mode.o
$(OBJDIR)/def_shell_mode.o: ./src/curses/def_shell_mode.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/def_shell_mode.c -o $@
	echo [CC] $@
libcurses.a(halfdelay.o): $(OBJDIR)/halfdelay.o
$(OBJDIR)/halfdelay.o: ./src/curses/halfdelay.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/halfdelay.c -o $@
	echo [CC] $@
libcurses.a(touchline.o): $(OBJDIR)/touchline.o
$(OBJDIR)/touchline.o: ./src/curses/touchline.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/touchline.c -o $@
	echo [CC] $@
libcurses.a(attroff.o): $(OBJDIR)/attroff.o
$(OBJDIR)/attroff.o: ./src/curses/attroff.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/attroff.c -o $@
	echo [CC] $@
libcurses.a(add_wch.o): $(OBJDIR)/add_wch.o
$(OBJDIR)/add_wch.o: ./src/curses/add_wch.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/add_wch.c -o $@
	echo [CC] $@
libcurses.a(termattrs.o): $(OBJDIR)/termattrs.o
$(OBJDIR)/termattrs.o: ./src/curses/termattrs.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/termattrs.c -o $@
	echo [CC] $@
libcurses.a(longname.o): $(OBJDIR)/longname.o
$(OBJDIR)/longname.o: ./src/curses/longname.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/longname.c -o $@
	echo [CC] $@
libcurses.a(overlay.o): $(OBJDIR)/overlay.o
$(OBJDIR)/overlay.o: ./src/curses/overlay.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/overlay.c -o $@
	echo [CC] $@
libcurses.a(ripoffline.o): $(OBJDIR)/ripoffline.o
$(OBJDIR)/ripoffline.o: ./src/curses/ripoffline.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/ripoffline.c -o $@
	echo [CC] $@
libcurses.a(ins_wch.o): $(OBJDIR)/ins_wch.o
$(OBJDIR)/ins_wch.o: ./src/curses/ins_wch.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/ins_wch.c -o $@
	echo [CC] $@
libcurses.a(standend.o): $(OBJDIR)/standend.o
$(OBJDIR)/standend.o: ./src/curses/standend.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/standend.c -o $@
	echo [CC] $@
libcurses.a(attr_set.o): $(OBJDIR)/attr_set.o
$(OBJDIR)/attr_set.o: ./src/curses/attr_set.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/attr_set.c -o $@
	echo [CC] $@
libcurses.a(touchwin.o): $(OBJDIR)/touchwin.o
$(OBJDIR)/touchwin.o: ./src/curses/touchwin.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/touchwin.c -o $@
	echo [CC] $@
libcurses.a(getwin.o): $(OBJDIR)/getwin.o
$(OBJDIR)/getwin.o: ./src/curses/getwin.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/getwin.c -o $@
	echo [CC] $@
libcurses.a(slk_label.o): $(OBJDIR)/slk_label.o
$(OBJDIR)/slk_label.o: ./src/curses/slk_label.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/slk_label.c -o $@
	echo [CC] $@
libcurses.a(initscr.o): $(OBJDIR)/initscr.o
$(OBJDIR)/initscr.o: ./src/curses/initscr.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/initscr.c -o $@
	echo [CC] $@
libcurses.a(standout.o): $(OBJDIR)/standout.o
$(OBJDIR)/standout.o: ./src/curses/standout.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/standout.c -o $@
	echo [CC] $@
libcurses.a(prefresh.o): $(OBJDIR)/prefresh.o
$(OBJDIR)/prefresh.o: ./src/curses/prefresh.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/prefresh.c -o $@
	echo [CC] $@
libcurses.a(notimeout.o): $(OBJDIR)/notimeout.o
$(OBJDIR)/notimeout.o: ./src/curses/notimeout.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/notimeout.c -o $@
	echo [CC] $@
libcurses.a(vline_set.o): $(OBJDIR)/vline_set.o
$(OBJDIR)/vline_set.o: ./src/curses/vline_set.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/vline_set.c -o $@
	echo [CC] $@
libcurses.a(in_wchnstr.o): $(OBJDIR)/in_wchnstr.o
$(OBJDIR)/in_wchnstr.o: ./src/curses/in_wchnstr.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/in_wchnstr.c -o $@
	echo [CC] $@
libcurses.a(typeahead.o): $(OBJDIR)/typeahead.o
$(OBJDIR)/typeahead.o: ./src/curses/typeahead.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/typeahead.c -o $@
	echo [CC] $@
libcurses.a(vid_attr.o): $(OBJDIR)/vid_attr.o
$(OBJDIR)/vid_attr.o: ./src/curses/vid_attr.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/vid_attr.c -o $@
	echo [CC] $@
libcurses.a(slk_touch.o): $(OBJDIR)/slk_touch.o
$(OBJDIR)/slk_touch.o: ./src/curses/slk_touch.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/slk_touch.c -o $@
	echo [CC] $@
libcurses.a(attr_on.o): $(OBJDIR)/attr_on.o
$(OBJDIR)/attr_on.o: ./src/curses/attr_on.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/attr_on.c -o $@
	echo [CC] $@
libcurses.a(hline_set.o): $(OBJDIR)/hline_set.o
$(OBJDIR)/hline_set.o: ./src/curses/hline_set.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/hline_set.c -o $@
	echo [CC] $@
libcurses.a(scrollok.o): $(OBJDIR)/scrollok.o
$(OBJDIR)/scrollok.o: ./src/curses/scrollok.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/scrollok.c -o $@
	echo [CC] $@
libcurses.a(beep.o): $(OBJDIR)/beep.o
$(OBJDIR)/beep.o: ./src/curses/beep.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/beep.c -o $@
	echo [CC] $@
libcurses.a(init_color.o): $(OBJDIR)/init_color.o
$(OBJDIR)/init_color.o: ./src/curses/init_color.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/init_color.c -o $@
	echo [CC] $@
libcurses.a(timeout.o): $(OBJDIR)/timeout.o
$(OBJDIR)/timeout.o: ./src/curses/timeout.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/timeout.c -o $@
	echo [CC] $@
libcurses.a(color_content.o): $(OBJDIR)/color_content.o
$(OBJDIR)/color_content.o: ./src/curses/color_content.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/color_content.c -o $@
	echo [CC] $@
libcurses.a(scr_restore.o): $(OBJDIR)/scr_restore.o
$(OBJDIR)/scr_restore.o: ./src/curses/scr_restore.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/scr_restore.c -o $@
	echo [CC] $@
libcurses.a(unget_wch.o): $(OBJDIR)/unget_wch.o
$(OBJDIR)/unget_wch.o: ./src/curses/unget_wch.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/unget_wch.c -o $@
	echo [CC] $@
libcurses.a(wnoutrefresh.o): $(OBJDIR)/wnoutrefresh.o
$(OBJDIR)/wnoutrefresh.o: ./src/curses/wnoutrefresh.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/wnoutrefresh.c -o $@
	echo [CC] $@
libcurses.a(insnstr.o): $(OBJDIR)/insnstr.o
$(OBJDIR)/insnstr.o: ./src/curses/insnstr.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/insnstr.c -o $@
	echo [CC] $@
libcurses.a(cbreak.o): $(OBJDIR)/cbreak.o
$(OBJDIR)/cbreak.o: ./src/curses/cbreak.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/cbreak.c -o $@
	echo [CC] $@
libcurses.a(in_wch.o): $(OBJDIR)/in_wch.o
$(OBJDIR)/in_wch.o: ./src/curses/in_wch.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/in_wch.c -o $@
	echo [CC] $@
libcurses.a(ungetch.o): $(OBJDIR)/ungetch.o
$(OBJDIR)/ungetch.o: ./src/curses/ungetch.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/ungetch.c -o $@
	echo [CC] $@
libcurses.a(in_wchstr.o): $(OBJDIR)/in_wchstr.o
$(OBJDIR)/in_wchstr.o: ./src/curses/in_wchstr.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/in_wchstr.c -o $@
	echo [CC] $@
libcurses.a(use_env.o): $(OBJDIR)/use_env.o
$(OBJDIR)/use_env.o: ./src/curses/use_env.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/use_env.c -o $@
	echo [CC] $@
libcurses.a(redrawwin.o): $(OBJDIR)/redrawwin.o
$(OBJDIR)/redrawwin.o: ./src/curses/redrawwin.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/redrawwin.c -o $@
	echo [CC] $@
libcurses.a(color_set.o): $(OBJDIR)/color_set.o
$(OBJDIR)/color_set.o: ./src/curses/color_set.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/color_set.c -o $@
	echo [CC] $@
libcurses.a(wcursyncup.o): $(OBJDIR)/wcursyncup.o
$(OBJDIR)/wcursyncup.o: ./src/curses/wcursyncup.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/wcursyncup.c -o $@
	echo [CC] $@
libcurses.a(pnoutrefresh.o): $(OBJDIR)/pnoutrefresh.o
$(OBJDIR)/pnoutrefresh.o: ./src/curses/pnoutrefresh.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/pnoutrefresh.c -o $@
	echo [CC] $@
libcurses.a(slk_attrset.o): $(OBJDIR)/slk_attrset.o
$(OBJDIR)/slk_attrset.o: ./src/curses/slk_attrset.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/slk_attrset.c -o $@
	echo [CC] $@
libcurses.a(delch.o): $(OBJDIR)/delch.o
$(OBJDIR)/delch.o: ./src/curses/delch.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/delch.c -o $@
	echo [CC] $@
libcurses.a(slk_init.o): $(OBJDIR)/slk_init.o
$(OBJDIR)/slk_init.o: ./src/curses/slk_init.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/slk_init.c -o $@
	echo [CC] $@
libcurses.a(termname.o): $(OBJDIR)/termname.o
$(OBJDIR)/termname.o: ./src/curses/termname.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/termname.c -o $@
	echo [CC] $@
libcurses.a(bkgrnd.o): $(OBJDIR)/bkgrnd.o
$(OBJDIR)/bkgrnd.o: ./src/curses/bkgrnd.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/bkgrnd.c -o $@
	echo [CC] $@
libcurses.a(attrset.o): $(OBJDIR)/attrset.o
$(OBJDIR)/attrset.o: ./src/curses/attrset.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/attrset.c -o $@
	echo [CC] $@
libcurses.a(add_wchstr.o): $(OBJDIR)/add_wchstr.o
$(OBJDIR)/add_wchstr.o: ./src/curses/add_wchstr.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/add_wchstr.c -o $@
	echo [CC] $@
libcurses.a(wprintw.o): $(OBJDIR)/wprintw.o
$(OBJDIR)/wprintw.o: ./src/curses/wprintw.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/wprintw.c -o $@
	echo [CC] $@
libcurses.a(start_color.o): $(OBJDIR)/start_color.o
$(OBJDIR)/start_color.o: ./src/curses/start_color.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/start_color.c -o $@
	echo [CC] $@
libcurses.a(addstr.o): $(OBJDIR)/addstr.o
$(OBJDIR)/addstr.o: ./src/curses/addstr.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/addstr.c -o $@
	echo [CC] $@
libcurses.a(get_wch.o): $(OBJDIR)/get_wch.o
$(OBJDIR)/get_wch.o: ./src/curses/get_wch.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/get_wch.c -o $@
	echo [CC] $@
libcurses.a(untouchwin.o): $(OBJDIR)/untouchwin.o
$(OBJDIR)/untouchwin.o: ./src/curses/untouchwin.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/untouchwin.c -o $@
	echo [CC] $@
libcurses.a(getbkgd.o): $(OBJDIR)/getbkgd.o
$(OBJDIR)/getbkgd.o: ./src/curses/getbkgd.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/getbkgd.c -o $@
	echo [CC] $@
libcurses.a(keyname.o): $(OBJDIR)/keyname.o
$(OBJDIR)/keyname.o: ./src/curses/keyname.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/keyname.c -o $@
	echo [CC] $@
libcurses.a(erasewchar.o): $(OBJDIR)/erasewchar.o
$(OBJDIR)/erasewchar.o: ./src/curses/erasewchar.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/erasewchar.c -o $@
	echo [CC] $@
libcurses.a(clrtobot.o): $(OBJDIR)/clrtobot.o
$(OBJDIR)/clrtobot.o: ./src/curses/clrtobot.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/clrtobot.c -o $@
	echo [CC] $@
libcurses.a(scanw.o): $(OBJDIR)/scanw.o
$(OBJDIR)/scanw.o: ./src/curses/scanw.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/scanw.c -o $@
	echo [CC] $@
libcurses.a(echo.o): $(OBJDIR)/echo.o
$(OBJDIR)/echo.o: ./src/curses/echo.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/echo.c -o $@
	echo [CC] $@
libcurses.a(add_wchnstr.o): $(OBJDIR)/add_wchnstr.o
$(OBJDIR)/add_wchnstr.o: ./src/curses/add_wchnstr.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/add_wchnstr.c -o $@
	echo [CC] $@
libcurses.a(napms.o): $(OBJDIR)/napms.o
$(OBJDIR)/napms.o: ./src/curses/napms.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/napms.c -o $@
	echo [CC] $@
libcurses.a(noraw.o): $(OBJDIR)/noraw.o
$(OBJDIR)/noraw.o: ./src/curses/noraw.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/noraw.c -o $@
	echo [CC] $@
libcurses.a(dupwin.o): $(OBJDIR)/dupwin.o
$(OBJDIR)/dupwin.o: ./src/curses/dupwin.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/dupwin.c -o $@
	echo [CC] $@
libcurses.a(filter.o): $(OBJDIR)/filter.o
$(OBJDIR)/filter.o: ./src/curses/filter.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/filter.c -o $@
	echo [CC] $@
libcurses.a(addwstr.o): $(OBJDIR)/addwstr.o
$(OBJDIR)/addwstr.o: ./src/curses/addwstr.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/addwstr.c -o $@
	echo [CC] $@
libcurses.a(mvderwin.o): $(OBJDIR)/mvderwin.o
$(OBJDIR)/mvderwin.o: ./src/curses/mvderwin.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/mvderwin.c -o $@
	echo [CC] $@
libcurses.a(move.o): $(OBJDIR)/move.o
$(OBJDIR)/move.o: ./src/curses/move.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/move.c -o $@
	echo [CC] $@
libcurses.a(vidputs.o): $(OBJDIR)/vidputs.o
$(OBJDIR)/vidputs.o: ./src/curses/vidputs.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/vidputs.c -o $@
	echo [CC] $@
libcurses.a(attron.o): $(OBJDIR)/attron.o
$(OBJDIR)/attron.o: ./src/curses/attron.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/attron.c -o $@
	echo [CC] $@
libcurses.a(insch.o): $(OBJDIR)/insch.o
$(OBJDIR)/insch.o: ./src/curses/insch.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/insch.c -o $@
	echo [CC] $@
libcurses.a(slk_attron.o): $(OBJDIR)/slk_attron.o
$(OBJDIR)/slk_attron.o: ./src/curses/slk_attron.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/slk_attron.c -o $@
	echo [CC] $@
libcurses.a(meta.o): $(OBJDIR)/meta.o
$(OBJDIR)/meta.o: ./src/curses/meta.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/meta.c -o $@
	echo [CC] $@
libcurses.a(mvwprintw.o): $(OBJDIR)/mvwprintw.o
$(OBJDIR)/mvwprintw.o: ./src/curses/mvwprintw.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/mvwprintw.c -o $@
	echo [CC] $@
libcurses.a(deleteln.o): $(OBJDIR)/deleteln.o
$(OBJDIR)/deleteln.o: ./src/curses/deleteln.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/deleteln.c -o $@
	echo [CC] $@
libcurses.a(is_linetouched.o): $(OBJDIR)/is_linetouched.o
$(OBJDIR)/is_linetouched.o: ./src/curses/is_linetouched.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/is_linetouched.c -o $@
	echo [CC] $@
libcurses.a(newterm.o): $(OBJDIR)/newterm.o
$(OBJDIR)/newterm.o: ./src/curses/newterm.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/newterm.c -o $@
	echo [CC] $@
libcurses.a(slk_attr_off.o): $(OBJDIR)/slk_attr_off.o
$(OBJDIR)/slk_attr_off.o: ./src/curses/slk_attr_off.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/slk_attr_off.c -o $@
	echo [CC] $@
libcurses.a(slk_restore.o): $(OBJDIR)/slk_restore.o
$(OBJDIR)/slk_restore.o: ./src/curses/slk_restore.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/slk_restore.c -o $@
	echo [CC] $@
libcurses.a(hline.o): $(OBJDIR)/hline.o
$(OBJDIR)/hline.o: ./src/curses/hline.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/hline.c -o $@
	echo [CC] $@
libcurses.a(def_prog_mode.o): $(OBJDIR)/def_prog_mode.o
$(OBJDIR)/def_prog_mode.o: ./src/curses/def_prog_mode.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/def_prog_mode.c -o $@
	echo [CC] $@
libcurses.a(insstr.o): $(OBJDIR)/insstr.o
$(OBJDIR)/insstr.o: ./src/curses/insstr.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/insstr.c -o $@
	echo [CC] $@
libcurses.a(innwstr.o): $(OBJDIR)/innwstr.o
$(OBJDIR)/innwstr.o: ./src/curses/innwstr.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/innwstr.c -o $@
	echo [CC] $@
libcurses.a(vw_scanw.o): $(OBJDIR)/vw_scanw.o
$(OBJDIR)/vw_scanw.o: ./src/curses/vw_scanw.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/vw_scanw.c -o $@
	echo [CC] $@
libcurses.a(bkgrndset.o): $(OBJDIR)/bkgrndset.o
$(OBJDIR)/bkgrndset.o: ./src/curses/bkgrndset.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/bkgrndset.c -o $@
	echo [CC] $@
libcurses.a(idcok.o): $(OBJDIR)/idcok.o
$(OBJDIR)/idcok.o: ./src/curses/idcok.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/idcok.c -o $@
	echo [CC] $@
libcurses.a(doupdate.o): $(OBJDIR)/doupdate.o
$(OBJDIR)/doupdate.o: ./src/curses/doupdate.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/doupdate.c -o $@
	echo [CC] $@
libcurses.a(set_term.o): $(OBJDIR)/set_term.o
$(OBJDIR)/set_term.o: ./src/curses/set_term.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/set_term.c -o $@
	echo [CC] $@
libcurses.a(addch.o): $(OBJDIR)/addch.o
$(OBJDIR)/addch.o: ./src/curses/addch.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/addch.c -o $@
	echo [CC] $@
libcurses.a(noecho.o): $(OBJDIR)/noecho.o
$(OBJDIR)/noecho.o: ./src/curses/noecho.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/noecho.c -o $@
	echo [CC] $@
libcurses.a(wsyncdown.o): $(OBJDIR)/wsyncdown.o
$(OBJDIR)/wsyncdown.o: ./src/curses/wsyncdown.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/wsyncdown.c -o $@
	echo [CC] $@
libcurses.a(mvscanw.o): $(OBJDIR)/mvscanw.o
$(OBJDIR)/mvscanw.o: ./src/curses/mvscanw.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/mvscanw.c -o $@
	echo [CC] $@
libcurses.a(idlok.o): $(OBJDIR)/idlok.o
$(OBJDIR)/idlok.o: ./src/curses/idlok.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/idlok.c -o $@
	echo [CC] $@
libcurses.a(echo_wchar.o): $(OBJDIR)/echo_wchar.o
$(OBJDIR)/echo_wchar.o: ./src/curses/echo_wchar.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/echo_wchar.c -o $@
	echo [CC] $@
libcurses.a(vline.o): $(OBJDIR)/vline.o
$(OBJDIR)/vline.o: ./src/curses/vline.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/vline.c -o $@
	echo [CC] $@
libcurses.a(COLS.o): $(OBJDIR)/COLS.o
$(OBJDIR)/COLS.o: ./src/curses/COLS.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/COLS.c -o $@
	echo [CC] $@
libcurses.a(inwstr.o): $(OBJDIR)/inwstr.o
$(OBJDIR)/inwstr.o: ./src/curses/inwstr.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/inwstr.c -o $@
	echo [CC] $@
libcurses.a(flash.o): $(OBJDIR)/flash.o
$(OBJDIR)/flash.o: ./src/curses/flash.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/flash.c -o $@
	echo [CC] $@
libcurses.a(printw.o): $(OBJDIR)/printw.o
$(OBJDIR)/printw.o: ./src/curses/printw.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/printw.c -o $@
	echo [CC] $@
libcurses.a(wredrawln.o): $(OBJDIR)/wredrawln.o
$(OBJDIR)/wredrawln.o: ./src/curses/wredrawln.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/wredrawln.c -o $@
	echo [CC] $@
libcurses.a(reset_shell_mode.o): $(OBJDIR)/reset_shell_mode.o
$(OBJDIR)/reset_shell_mode.o: ./src/curses/reset_shell_mode.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/reset_shell_mode.c -o $@
	echo [CC] $@
libcurses.a(attr_get.o): $(OBJDIR)/attr_get.o
$(OBJDIR)/attr_get.o: ./src/curses/attr_get.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/attr_get.c -o $@
	echo [CC] $@
libcurses.a(erasechar.o): $(OBJDIR)/erasechar.o
$(OBJDIR)/erasechar.o: ./src/curses/erasechar.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/erasechar.c -o $@
	echo [CC] $@
libcurses.a(endwin.o): $(OBJDIR)/endwin.o
$(OBJDIR)/endwin.o: ./src/curses/endwin.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/endwin.c -o $@
	echo [CC] $@
libcurses.a(get_wstr.o): $(OBJDIR)/get_wstr.o
$(OBJDIR)/get_wstr.o: ./src/curses/get_wstr.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/get_wstr.c -o $@
	echo [CC] $@
libcurses.a(attr_off.o): $(OBJDIR)/attr_off.o
$(OBJDIR)/attr_off.o: ./src/curses/attr_off.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/attr_off.c -o $@
	echo [CC] $@
libcurses.a(derwin.o): $(OBJDIR)/derwin.o
$(OBJDIR)/derwin.o: ./src/curses/derwin.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/derwin.c -o $@
	echo [CC] $@
libcurses.a(slk_set.o): $(OBJDIR)/slk_set.o
$(OBJDIR)/slk_set.o: ./src/curses/slk_set.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/slk_set.c -o $@
	echo [CC] $@
libcurses.a(nocbreak.o): $(OBJDIR)/nocbreak.o
$(OBJDIR)/nocbreak.o: ./src/curses/nocbreak.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/nocbreak.c -o $@
	echo [CC] $@
libcurses.a(slk_attroff.o): $(OBJDIR)/slk_attroff.o
$(OBJDIR)/slk_attroff.o: ./src/curses/slk_attroff.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/slk_attroff.c -o $@
	echo [CC] $@
libcurses.a(getstr.o): $(OBJDIR)/getstr.o
$(OBJDIR)/getstr.o: ./src/curses/getstr.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/getstr.c -o $@
	echo [CC] $@
libcurses.a(vid_puts.o): $(OBJDIR)/vid_puts.o
$(OBJDIR)/vid_puts.o: ./src/curses/vid_puts.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/vid_puts.c -o $@
	echo [CC] $@
libcurses.a(delscreen.o): $(OBJDIR)/delscreen.o
$(OBJDIR)/delscreen.o: ./src/curses/delscreen.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/delscreen.c -o $@
	echo [CC] $@
libcurses.a(noqiflush.o): $(OBJDIR)/noqiflush.o
$(OBJDIR)/noqiflush.o: ./src/curses/noqiflush.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/noqiflush.c -o $@
	echo [CC] $@
libcurses.a(pechochar.o): $(OBJDIR)/pechochar.o
$(OBJDIR)/pechochar.o: ./src/curses/pechochar.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/pechochar.c -o $@
	echo [CC] $@
libcurses.a(insertln.o): $(OBJDIR)/insertln.o
$(OBJDIR)/insertln.o: ./src/curses/insertln.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/insertln.c -o $@
	echo [CC] $@
libcurses.a(scr_set.o): $(OBJDIR)/scr_set.o
$(OBJDIR)/scr_set.o: ./src/curses/scr_set.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/scr_set.c -o $@
	echo [CC] $@
libcurses.a(slk_clear.o): $(OBJDIR)/slk_clear.o
$(OBJDIR)/slk_clear.o: ./src/curses/slk_clear.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/slk_clear.c -o $@
	echo [CC] $@
libcurses.a(COLORS.o): $(OBJDIR)/COLORS.o
$(OBJDIR)/COLORS.o: ./src/curses/COLORS.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/COLORS.c -o $@
	echo [CC] $@
libcurses.a(getbkgrnd.o): $(OBJDIR)/getbkgrnd.o
$(OBJDIR)/getbkgrnd.o: ./src/curses/getbkgrnd.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/getbkgrnd.c -o $@
	echo [CC] $@
libcurses.a(flushinp.o): $(OBJDIR)/flushinp.o
$(OBJDIR)/flushinp.o: ./src/curses/flushinp.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/flushinp.c -o $@
	echo [CC] $@
libcurses.a(newpad.o): $(OBJDIR)/newpad.o
$(OBJDIR)/newpad.o: ./src/curses/newpad.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/newpad.c -o $@
	echo [CC] $@
libcurses.a(delwin.o): $(OBJDIR)/delwin.o
$(OBJDIR)/delwin.o: ./src/curses/delwin.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/delwin.c -o $@
	echo [CC] $@
libcurses.a(slk_refresh.o): $(OBJDIR)/slk_refresh.o
$(OBJDIR)/slk_refresh.o: ./src/curses/slk_refresh.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/slk_refresh.c -o $@
	echo [CC] $@
libcurses.a(immedok.o): $(OBJDIR)/immedok.o
$(OBJDIR)/immedok.o: ./src/curses/immedok.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/immedok.c -o $@
	echo [CC] $@
libcurses.a(copywin.o): $(OBJDIR)/copywin.o
$(OBJDIR)/copywin.o: ./src/curses/copywin.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/copywin.c -o $@
	echo [CC] $@
libcurses.a(has_colors.o): $(OBJDIR)/has_colors.o
$(OBJDIR)/has_colors.o: ./src/curses/has_colors.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/has_colors.c -o $@
	echo [CC] $@
libcurses.a(slk_attr_on.o): $(OBJDIR)/slk_attr_on.o
$(OBJDIR)/slk_attr_on.o: ./src/curses/slk_attr_on.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/slk_attr_on.c -o $@
	echo [CC] $@
libcurses.a(addchstr.o): $(OBJDIR)/addchstr.o
$(OBJDIR)/addchstr.o: ./src/curses/addchstr.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/addchstr.c -o $@
	echo [CC] $@
libcurses.a(border_set.o): $(OBJDIR)/border_set.o
$(OBJDIR)/border_set.o: ./src/curses/border_set.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/border_set.c -o $@
	echo [CC] $@
libcurses.a(ins_wstr.o): $(OBJDIR)/ins_wstr.o
$(OBJDIR)/ins_wstr.o: ./src/curses/ins_wstr.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/ins_wstr.c -o $@
	echo [CC] $@
libcurses.a(has_ic.o): $(OBJDIR)/has_ic.o
$(OBJDIR)/has_ic.o: ./src/curses/has_ic.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/has_ic.c -o $@
	echo [CC] $@
libcurses.a(mvprintw.o): $(OBJDIR)/mvprintw.o
$(OBJDIR)/mvprintw.o: ./src/curses/mvprintw.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/mvprintw.c -o $@
	echo [CC] $@
libcurses.a(has_il.o): $(OBJDIR)/has_il.o
$(OBJDIR)/has_il.o: ./src/curses/has_il.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/has_il.c -o $@
	echo [CC] $@
libcurses.a(addnwstr.o): $(OBJDIR)/addnwstr.o
$(OBJDIR)/addnwstr.o: ./src/curses/addnwstr.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/addnwstr.c -o $@
	echo [CC] $@
libcurses.a(mvcur.o): $(OBJDIR)/mvcur.o
$(OBJDIR)/mvcur.o: ./src/curses/mvcur.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/mvcur.c -o $@
	echo [CC] $@
libcurses.a(putwin.o): $(OBJDIR)/putwin.o
$(OBJDIR)/putwin.o: ./src/curses/putwin.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/putwin.c -o $@
	echo [CC] $@
libcurses.a(clear.o): $(OBJDIR)/clear.o
$(OBJDIR)/clear.o: ./src/curses/clear.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/clear.c -o $@
	echo [CC] $@
libcurses.a(bkgd.o): $(OBJDIR)/bkgd.o
$(OBJDIR)/bkgd.o: ./src/curses/bkgd.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/bkgd.c -o $@
	echo [CC] $@
libcurses.a(refresh.o): $(OBJDIR)/refresh.o
$(OBJDIR)/refresh.o: ./src/curses/refresh.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/refresh.c -o $@
	echo [CC] $@
libcurses.a(scrl.o): $(OBJDIR)/scrl.o
$(OBJDIR)/scrl.o: ./src/curses/scrl.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/scrl.c -o $@
	echo [CC] $@
libcurses.a(reset_prog_mode.o): $(OBJDIR)/reset_prog_mode.o
$(OBJDIR)/reset_prog_mode.o: ./src/curses/reset_prog_mode.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/reset_prog_mode.c -o $@
	echo [CC] $@
libcurses.a(init_pair.o): $(OBJDIR)/init_pair.o
$(OBJDIR)/init_pair.o: ./src/curses/init_pair.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/init_pair.c -o $@
	echo [CC] $@
libcurses.a(slk_color.o): $(OBJDIR)/slk_color.o
$(OBJDIR)/slk_color.o: ./src/curses/slk_color.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/slk_color.c -o $@
	echo [CC] $@
libcurses.a(COLOR_PAIRS.o): $(OBJDIR)/COLOR_PAIRS.o
$(OBJDIR)/COLOR_PAIRS.o: ./src/curses/COLOR_PAIRS.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/COLOR_PAIRS.c -o $@
	echo [CC] $@
libcurses.a(echochar.o): $(OBJDIR)/echochar.o
$(OBJDIR)/echochar.o: ./src/curses/echochar.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/echochar.c -o $@
	echo [CC] $@
libcurses.a(newwin.o): $(OBJDIR)/newwin.o
$(OBJDIR)/newwin.o: ./src/curses/newwin.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/newwin.c -o $@
	echo [CC] $@
libcurses.a(vidattr.o): $(OBJDIR)/vidattr.o
$(OBJDIR)/vidattr.o: ./src/curses/vidattr.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/vidattr.c -o $@
	echo [CC] $@
libcurses.a(pecho_wchar.o): $(OBJDIR)/pecho_wchar.o
$(OBJDIR)/pecho_wchar.o: ./src/curses/pecho_wchar.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/pecho_wchar.c -o $@
	echo [CC] $@
libcurses.a(inch.o): $(OBJDIR)/inch.o
$(OBJDIR)/inch.o: ./src/curses/inch.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/inch.c -o $@
	echo [CC] $@
libcurses.a(intrflush.o): $(OBJDIR)/intrflush.o
$(OBJDIR)/intrflush.o: ./src/curses/intrflush.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/intrflush.c -o $@
	echo [CC] $@
libcurses.a(leaveok.o): $(OBJDIR)/leaveok.o
$(OBJDIR)/leaveok.o: ./src/curses/leaveok.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/leaveok.c -o $@
	echo [CC] $@
libcurses.a(overwrite.o): $(OBJDIR)/overwrite.o
$(OBJDIR)/overwrite.o: ./src/curses/overwrite.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/overwrite.c -o $@
	echo [CC] $@
libcurses.a(bkgdset.o): $(OBJDIR)/bkgdset.o
$(OBJDIR)/bkgdset.o: ./src/curses/bkgdset.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/bkgdset.c -o $@
	echo [CC] $@
libcurses.a(addchnstr.o): $(OBJDIR)/addchnstr.o
$(OBJDIR)/addchnstr.o: ./src/curses/addchnstr.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/addchnstr.c -o $@
	echo [CC] $@
libcurses.a(scr_dump.o): $(OBJDIR)/scr_dump.o
$(OBJDIR)/scr_dump.o: ./src/curses/scr_dump.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/scr_dump.c -o $@
	echo [CC] $@
libcurses.a(erase.o): $(OBJDIR)/erase.o
$(OBJDIR)/erase.o: ./src/curses/erase.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/erase.c -o $@
	echo [CC] $@
libcurses.a(vw_printw.o): $(OBJDIR)/vw_printw.o
$(OBJDIR)/vw_printw.o: ./src/curses/vw_printw.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/vw_printw.c -o $@
	echo [CC] $@
libcurses.a(setcchar.o): $(OBJDIR)/setcchar.o
$(OBJDIR)/setcchar.o: ./src/curses/setcchar.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/setcchar.c -o $@
	echo [CC] $@
libcurses.a(savetty.o): $(OBJDIR)/savetty.o
$(OBJDIR)/savetty.o: ./src/curses/savetty.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/savetty.c -o $@
	echo [CC] $@
libcurses.a(wscanw.o): $(OBJDIR)/wscanw.o
$(OBJDIR)/wscanw.o: ./src/curses/wscanw.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/wscanw.c -o $@
	echo [CC] $@
libcurses.a(box_set.o): $(OBJDIR)/box_set.o
$(OBJDIR)/box_set.o: ./src/curses/box_set.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/box_set.c -o $@
	echo [CC] $@
libcurses.a(clrtoeol.o): $(OBJDIR)/clrtoeol.o
$(OBJDIR)/clrtoeol.o: ./src/curses/clrtoeol.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/clrtoeol.c -o $@
	echo [CC] $@
libcurses.a(inchnstr.o): $(OBJDIR)/inchnstr.o
$(OBJDIR)/inchnstr.o: ./src/curses/inchnstr.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/inchnstr.c -o $@
	echo [CC] $@
libcurses.a(term_attrs.o): $(OBJDIR)/term_attrs.o
$(OBJDIR)/term_attrs.o: ./src/curses/term_attrs.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/term_attrs.c -o $@
	echo [CC] $@
libcurses.a(insdelln.o): $(OBJDIR)/insdelln.o
$(OBJDIR)/insdelln.o: ./src/curses/insdelln.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/insdelln.c -o $@
	echo [CC] $@
libcurses.a(curscr.o): $(OBJDIR)/curscr.o
$(OBJDIR)/curscr.o: ./src/curses/curscr.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/curscr.c -o $@
	echo [CC] $@
libcurses.a(isendwin.o): $(OBJDIR)/isendwin.o
$(OBJDIR)/isendwin.o: ./src/curses/isendwin.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/isendwin.c -o $@
	echo [CC] $@
libcurses.a(subwin.o): $(OBJDIR)/subwin.o
$(OBJDIR)/subwin.o: ./src/curses/subwin.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/subwin.c -o $@
	echo [CC] $@
libcurses.a(border.o): $(OBJDIR)/border.o
$(OBJDIR)/border.o: ./src/curses/border.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/border.c -o $@
	echo [CC] $@
libcurses.a(mvwscanw.o): $(OBJDIR)/mvwscanw.o
$(OBJDIR)/mvwscanw.o: ./src/curses/mvwscanw.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/mvwscanw.c -o $@
	echo [CC] $@
libcurses.a(nodelay.o): $(OBJDIR)/nodelay.o
$(OBJDIR)/nodelay.o: ./src/curses/nodelay.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/nodelay.c -o $@
	echo [CC] $@
libcurses.a(scr_init.o): $(OBJDIR)/scr_init.o
$(OBJDIR)/scr_init.o: ./src/curses/scr_init.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/scr_init.c -o $@
	echo [CC] $@
libcurses.a(subpad.o): $(OBJDIR)/subpad.o
$(OBJDIR)/subpad.o: ./src/curses/subpad.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/subpad.c -o $@
	echo [CC] $@
libcurses.a(delay_output.o): $(OBJDIR)/delay_output.o
$(OBJDIR)/delay_output.o: ./src/curses/delay_output.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/delay_output.c -o $@
	echo [CC] $@
libcurses.a(stdscr.o): $(OBJDIR)/stdscr.o
$(OBJDIR)/stdscr.o: ./src/curses/stdscr.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/stdscr.c -o $@
	echo [CC] $@
libcurses.a(raw.o): $(OBJDIR)/raw.o
$(OBJDIR)/raw.o: ./src/curses/raw.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/raw.c -o $@
	echo [CC] $@
libcurses.a(is_wintouched.o): $(OBJDIR)/is_wintouched.o
$(OBJDIR)/is_wintouched.o: ./src/curses/is_wintouched.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/is_wintouched.c -o $@
	echo [CC] $@
libcurses.a(key_name.o): $(OBJDIR)/key_name.o
$(OBJDIR)/key_name.o: ./src/curses/key_name.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/key_name.c -o $@
	echo [CC] $@
libcurses.a(killchar.o): $(OBJDIR)/killchar.o
$(OBJDIR)/killchar.o: ./src/curses/killchar.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/killchar.c -o $@
	echo [CC] $@
libcurses.a(can_change_color.o): $(OBJDIR)/can_change_color.o
$(OBJDIR)/can_change_color.o: ./src/curses/can_change_color.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/can_change_color.c -o $@
	echo [CC] $@
libcurses.a(clearok.o): $(OBJDIR)/clearok.o
$(OBJDIR)/clearok.o: ./src/curses/clearok.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/clearok.c -o $@
	echo [CC] $@
libcurses.a(getcchar.o): $(OBJDIR)/getcchar.o
$(OBJDIR)/getcchar.o: ./src/curses/getcchar.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/getcchar.c -o $@
	echo [CC] $@
libcurses.a(LINES.o): $(OBJDIR)/LINES.o
$(OBJDIR)/LINES.o: ./src/curses/LINES.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/LINES.c -o $@
	echo [CC] $@
libcurses.a(chgat.o): $(OBJDIR)/chgat.o
$(OBJDIR)/chgat.o: ./src/curses/chgat.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/chgat.c -o $@
	echo [CC] $@
libcurses.a(keypad.o): $(OBJDIR)/keypad.o
$(OBJDIR)/keypad.o: ./src/curses/keypad.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/keypad.c -o $@
	echo [CC] $@
libcurses.a(addnstr.o): $(OBJDIR)/addnstr.o
$(OBJDIR)/addnstr.o: ./src/curses/addnstr.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/addnstr.c -o $@
	echo [CC] $@
libcurses.a(nonl.o): $(OBJDIR)/nonl.o
$(OBJDIR)/nonl.o: ./src/curses/nonl.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/nonl.c -o $@
	echo [CC] $@
libcurses.a(killwchar.o): $(OBJDIR)/killwchar.o
$(OBJDIR)/killwchar.o: ./src/curses/killwchar.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/killwchar.c -o $@
	echo [CC] $@
libcurses.a(inchstr.o): $(OBJDIR)/inchstr.o
$(OBJDIR)/inchstr.o: ./src/curses/inchstr.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/inchstr.c -o $@
	echo [CC] $@
libcurses.a(box.o): $(OBJDIR)/box.o
$(OBJDIR)/box.o: ./src/curses/box.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/box.c -o $@
	echo [CC] $@
libcurses.a(curs_set.o): $(OBJDIR)/curs_set.o
$(OBJDIR)/curs_set.o: ./src/curses/curs_set.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/curs_set.c -o $@
	echo [CC] $@
libcurses.a(ins_nwstr.o): $(OBJDIR)/ins_nwstr.o
$(OBJDIR)/ins_nwstr.o: ./src/curses/ins_nwstr.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/ins_nwstr.c -o $@
	echo [CC] $@
libcurses.a(getch.o): $(OBJDIR)/getch.o
$(OBJDIR)/getch.o: ./src/curses/getch.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/getch.c -o $@
	echo [CC] $@
libcurses.a(instr.o): $(OBJDIR)/instr.o
$(OBJDIR)/instr.o: ./src/curses/instr.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/instr.c -o $@
	echo [CC] $@
libcurses.a(qiflush.o): $(OBJDIR)/qiflush.o
$(OBJDIR)/qiflush.o: ./src/curses/qiflush.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/qiflush.c -o $@
	echo [CC] $@
libcurses.a(getn_wstr.o): $(OBJDIR)/getn_wstr.o
$(OBJDIR)/getn_wstr.o: ./src/curses/getn_wstr.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/getn_wstr.c -o $@
	echo [CC] $@
libcurses.a(wtouchln.o): $(OBJDIR)/wtouchln.o
$(OBJDIR)/wtouchln.o: ./src/curses/wtouchln.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/wtouchln.c -o $@
	echo [CC] $@
libcurses.a(resetty.o): $(OBJDIR)/resetty.o
$(OBJDIR)/resetty.o: ./src/curses/resetty.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/resetty.c -o $@
	echo [CC] $@
libcurses.a(innstr.o): $(OBJDIR)/innstr.o
$(OBJDIR)/innstr.o: ./src/curses/innstr.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/innstr.c -o $@
	echo [CC] $@
libcurses.a(getnstr.o): $(OBJDIR)/getnstr.o
$(OBJDIR)/getnstr.o: ./src/curses/getnstr.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/getnstr.c -o $@
	echo [CC] $@
libcurses.a(syncok.o): $(OBJDIR)/syncok.o
$(OBJDIR)/syncok.o: ./src/curses/syncok.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/syncok.c -o $@
	echo [CC] $@
libcurses.a(setscrreg.o): $(OBJDIR)/setscrreg.o
$(OBJDIR)/setscrreg.o: ./src/curses/setscrreg.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/setscrreg.c -o $@
	echo [CC] $@
libcurses.a(pair_content.o): $(OBJDIR)/pair_content.o
$(OBJDIR)/pair_content.o: ./src/curses/pair_content.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/pair_content.c -o $@
	echo [CC] $@
libcurses.a(nl.o): $(OBJDIR)/nl.o
$(OBJDIR)/nl.o: ./src/curses/nl.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/nl.c -o $@
	echo [CC] $@
libcurses.a(slk_attr_set.o): $(OBJDIR)/slk_attr_set.o
$(OBJDIR)/slk_attr_set.o: ./src/curses/slk_attr_set.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/slk_attr_set.c -o $@
	echo [CC] $@
libcurses.a(slk_wset.o): $(OBJDIR)/slk_wset.o
$(OBJDIR)/slk_wset.o: ./src/curses/slk_wset.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/slk_wset.c -o $@
	echo [CC] $@
libcurses.a(mvwin.o): $(OBJDIR)/mvwin.o
$(OBJDIR)/mvwin.o: ./src/curses/mvwin.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/mvwin.c -o $@
	echo [CC] $@
libc.a(wcstoimax.o): $(OBJDIR)/wcstoimax.o
$(OBJDIR)/wcstoimax.o: ./src/inttypes/wcstoimax.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/inttypes/wcstoimax.c -o $@
	echo [CC] $@
libc.a(imaxdiv.o): $(OBJDIR)/imaxdiv.o
$(OBJDIR)/imaxdiv.o: ./src/inttypes/imaxdiv.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/inttypes/imaxdiv.c -o $@
	echo [CC] $@
libc.a(wcstoumax.o): $(OBJDIR)/wcstoumax.o
$(OBJDIR)/wcstoumax.o: ./src/inttypes/wcstoumax.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/inttypes/wcstoumax.c -o $@
	echo [CC] $@
libc.a(strtoumax.o): $(OBJDIR)/strtoumax.o
$(OBJDIR)/strtoumax.o: ./src/inttypes/strtoumax.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/inttypes/strtoumax.c -o $@
	echo [CC] $@
libc.a(imaxabs.o): $(OBJDIR)/imaxabs.o
$(OBJDIR)/imaxabs.o: ./src/inttypes/imaxabs.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/inttypes/imaxabs.c -o $@
	echo [CC] $@
libc.a(strtoimax.o): $(OBJDIR)/strtoimax.o
$(OBJDIR)/strtoimax.o: ./src/inttypes/strtoimax.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/inttypes/strtoimax.c -o $@
	echo [CC] $@
libc.a(localeconv.o): $(OBJDIR)/localeconv.o
$(OBJDIR)/localeconv.o: ./src/locale/localeconv.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/locale/localeconv.c -o $@
	echo [CC] $@
libc.a(__get_locale.o): $(OBJDIR)/__get_locale.o
$(OBJDIR)/__get_locale.o: ./src/locale/__get_locale.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/locale/__get_locale.c -o $@
	echo [CC] $@
libc.a(__load_locale.o): $(OBJDIR)/__load_locale.o
$(OBJDIR)/__load_locale.o: ./src/locale/__load_locale.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/locale/__load_locale.c -o $@
	echo [CC] $@
libc.a(setlocale.o): $(OBJDIR)/setlocale.o
$(OBJDIR)/setlocale.o: ./src/locale/setlocale.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/locale/setlocale.c -o $@
	echo [CC] $@
libc.a(poll.o): $(OBJDIR)/poll.o
$(OBJDIR)/poll.o: ./src/poll/poll.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/poll/poll.c -o $@
	echo [CC] $@
libm.a(y0.o): $(OBJDIR)/y0.o
$(OBJDIR)/y0.o: ./src/math/y0.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/y0.c -o $@
	echo [CC] $@
libm.a(asin.o): $(OBJDIR)/asin.o
$(OBJDIR)/asin.o: ./src/math/asin.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/asin.c -o $@
	echo [CC] $@
libm.a(cosh.o): $(OBJDIR)/cosh.o
$(OBJDIR)/cosh.o: ./src/math/cosh.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/cosh.c -o $@
	echo [CC] $@
libm.a(scalbn.o): $(OBJDIR)/scalbn.o
$(OBJDIR)/scalbn.o: ./src/math/scalbn.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/scalbn.c -o $@
	echo [CC] $@
libm.a(asinh.o): $(OBJDIR)/asinh.o
$(OBJDIR)/asinh.o: ./src/math/asinh.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/asinh.c -o $@
	echo [CC] $@
libm.a(ilogb.o): $(OBJDIR)/ilogb.o
$(OBJDIR)/ilogb.o: ./src/math/ilogb.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/ilogb.c -o $@
	echo [CC] $@
libm.a(llround.o): $(OBJDIR)/llround.o
$(OBJDIR)/llround.o: ./src/math/llround.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/llround.c -o $@
	echo [CC] $@
libm.a(j1.o): $(OBJDIR)/j1.o
$(OBJDIR)/j1.o: ./src/math/j1.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/j1.c -o $@
	echo [CC] $@
libm.a(fabs.o): $(OBJDIR)/fabs.o
$(OBJDIR)/fabs.o: ./src/math/fabs.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/fabs.c -o $@
	echo [CC] $@
libm.a(frexp.o): $(OBJDIR)/frexp.o
$(OBJDIR)/frexp.o: ./src/math/frexp.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/frexp.c -o $@
	echo [CC] $@
libm.a(nearbyint.o): $(OBJDIR)/nearbyint.o
$(OBJDIR)/nearbyint.o: ./src/math/nearbyint.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/nearbyint.c -o $@
	echo [CC] $@
libm.a(y1.o): $(OBJDIR)/y1.o
$(OBJDIR)/y1.o: ./src/math/y1.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/y1.c -o $@
	echo [CC] $@
libm.a(fmax.o): $(OBJDIR)/fmax.o
$(OBJDIR)/fmax.o: ./src/math/fmax.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/fmax.c -o $@
	echo [CC] $@
libm.a(nextafter.o): $(OBJDIR)/nextafter.o
$(OBJDIR)/nextafter.o: ./src/math/nextafter.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/nextafter.c -o $@
	echo [CC] $@
libm.a(scalb.o): $(OBJDIR)/scalb.o
$(OBJDIR)/scalb.o: ./src/math/scalb.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/scalb.c -o $@
	echo [CC] $@
libm.a(remquo.o): $(OBJDIR)/remquo.o
$(OBJDIR)/remquo.o: ./src/math/remquo.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/remquo.c -o $@
	echo [CC] $@
libm.a(gamma.o): $(OBJDIR)/gamma.o
$(OBJDIR)/gamma.o: ./src/math/gamma.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/gamma.c -o $@
	echo [CC] $@
libm.a(sin.o): $(OBJDIR)/sin.o
$(OBJDIR)/sin.o: ./src/math/sin.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/sin.c -o $@
	echo [CC] $@
libm.a(exp.o): $(OBJDIR)/exp.o
$(OBJDIR)/exp.o: ./src/math/exp.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/exp.c -o $@
	echo [CC] $@
libm.a(erfc.o): $(OBJDIR)/erfc.o
$(OBJDIR)/erfc.o: ./src/math/erfc.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/erfc.c -o $@
	echo [CC] $@
libm.a(yn.o): $(OBJDIR)/yn.o
$(OBJDIR)/yn.o: ./src/math/yn.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/yn.c -o $@
	echo [CC] $@
libm.a(log2.o): $(OBJDIR)/log2.o
$(OBJDIR)/log2.o: ./src/math/log2.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/log2.c -o $@
	echo [CC] $@
libm.a(round.o): $(OBJDIR)/round.o
$(OBJDIR)/round.o: ./src/math/round.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/round.c -o $@
	echo [CC] $@
libm.a(fdim.o): $(OBJDIR)/fdim.o
$(OBJDIR)/fdim.o: ./src/math/fdim.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/fdim.c -o $@
	echo [CC] $@
libm.a(modf.o): $(OBJDIR)/modf.o
$(OBJDIR)/modf.o: ./src/math/modf.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/modf.c -o $@
	echo [CC] $@
libm.a(j0.o): $(OBJDIR)/j0.o
$(OBJDIR)/j0.o: ./src/math/j0.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/j0.c -o $@
	echo [CC] $@
libm.a(exp2.o): $(OBJDIR)/exp2.o
$(OBJDIR)/exp2.o: ./src/math/exp2.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/exp2.c -o $@
	echo [CC] $@
libm.a(atan.o): $(OBJDIR)/atan.o
$(OBJDIR)/atan.o: ./src/math/atan.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/atan.c -o $@
	echo [CC] $@
libm.a(acosh.o): $(OBJDIR)/acosh.o
$(OBJDIR)/acosh.o: ./src/math/acosh.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/acosh.c -o $@
	echo [CC] $@
libm.a(scalbln.o): $(OBJDIR)/scalbln.o
$(OBJDIR)/scalbln.o: ./src/math/scalbln.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/scalbln.c -o $@
	echo [CC] $@
libm.a(lround.o): $(OBJDIR)/lround.o
$(OBJDIR)/lround.o: ./src/math/lround.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/lround.c -o $@
	echo [CC] $@
libm.a(pow.o): $(OBJDIR)/pow.o
$(OBJDIR)/pow.o: ./src/math/pow.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/pow.c -o $@
	echo [CC] $@
libm.a(lgamma.o): $(OBJDIR)/lgamma.o
$(OBJDIR)/lgamma.o: ./src/math/lgamma.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/lgamma.c -o $@
	echo [CC] $@
libm.a(tanh.o): $(OBJDIR)/tanh.o
$(OBJDIR)/tanh.o: ./src/math/tanh.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/tanh.c -o $@
	echo [CC] $@
libm.a(llrint.o): $(OBJDIR)/llrint.o
$(OBJDIR)/llrint.o: ./src/math/llrint.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/llrint.c -o $@
	echo [CC] $@
libm.a(hypot.o): $(OBJDIR)/hypot.o
$(OBJDIR)/hypot.o: ./src/math/hypot.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/hypot.c -o $@
	echo [CC] $@
libm.a(acos.o): $(OBJDIR)/acos.o
$(OBJDIR)/acos.o: ./src/math/acos.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/acos.c -o $@
	echo [CC] $@
libm.a(jn.o): $(OBJDIR)/jn.o
$(OBJDIR)/jn.o: ./src/math/jn.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/jn.c -o $@
	echo [CC] $@
libm.a(rint.o): $(OBJDIR)/rint.o
$(OBJDIR)/rint.o: ./src/math/rint.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/rint.c -o $@
	echo [CC] $@
libm.a(__fpclassify.o): $(OBJDIR)/__fpclassify.o
$(OBJDIR)/__fpclassify.o: ./src/math/__fpclassify.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/__fpclassify.c -o $@
	echo [CC] $@
libm.a(tgamma.o): $(OBJDIR)/tgamma.o
$(OBJDIR)/tgamma.o: ./src/math/tgamma.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/tgamma.c -o $@
	echo [CC] $@
libm.a(signgam.o): $(OBJDIR)/signgam.o
$(OBJDIR)/signgam.o: ./src/math/signgam.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/signgam.c -o $@
	echo [CC] $@
libm.a(floor.o): $(OBJDIR)/floor.o
$(OBJDIR)/floor.o: ./src/math/floor.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/floor.c -o $@
	echo [CC] $@
libm.a(fmod.o): $(OBJDIR)/fmod.o
$(OBJDIR)/fmod.o: ./src/math/fmod.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/fmod.c -o $@
	echo [CC] $@
libm.a(nexttoward.o): $(OBJDIR)/nexttoward.o
$(OBJDIR)/nexttoward.o: ./src/math/nexttoward.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/nexttoward.c -o $@
	echo [CC] $@
libm.a(atan2.o): $(OBJDIR)/atan2.o
$(OBJDIR)/atan2.o: ./src/math/atan2.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/atan2.c -o $@
	echo [CC] $@
libm.a(copysign.o): $(OBJDIR)/copysign.o
$(OBJDIR)/copysign.o: ./src/math/copysign.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/copysign.c -o $@
	echo [CC] $@
libm.a(logb.o): $(OBJDIR)/logb.o
$(OBJDIR)/logb.o: ./src/math/logb.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/logb.c -o $@
	echo [CC] $@
libm.a(tan.o): $(OBJDIR)/tan.o
$(OBJDIR)/tan.o: ./src/math/tan.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/tan.c -o $@
	echo [CC] $@
libm.a(sqrt.o): $(OBJDIR)/sqrt.o
$(OBJDIR)/sqrt.o: ./src/math/sqrt.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/sqrt.c -o $@
	echo [CC] $@
libm.a(log10.o): $(OBJDIR)/log10.o
$(OBJDIR)/log10.o: ./src/math/log10.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/log10.c -o $@
	echo [CC] $@
libm.a(cos.o): $(OBJDIR)/cos.o
$(OBJDIR)/cos.o: ./src/math/cos.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/cos.c -o $@
	echo [CC] $@
libm.a(fmin.o): $(OBJDIR)/fmin.o
$(OBJDIR)/fmin.o: ./src/math/fmin.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/fmin.c -o $@
	echo [CC] $@
libm.a(expm1.o): $(OBJDIR)/expm1.o
$(OBJDIR)/expm1.o: ./src/math/expm1.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/expm1.c -o $@
	echo [CC] $@
libm.a(nan.o): $(OBJDIR)/nan.o
$(OBJDIR)/nan.o: ./src/math/nan.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/nan.c -o $@
	echo [CC] $@
libm.a(erf.o): $(OBJDIR)/erf.o
$(OBJDIR)/erf.o: ./src/math/erf.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/erf.c -o $@
	echo [CC] $@
libm.a(trunc.o): $(OBJDIR)/trunc.o
$(OBJDIR)/trunc.o: ./src/math/trunc.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/trunc.c -o $@
	echo [CC] $@
libm.a(ldexp.o): $(OBJDIR)/ldexp.o
$(OBJDIR)/ldexp.o: ./src/math/ldexp.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/ldexp.c -o $@
	echo [CC] $@
libm.a(log1p.o): $(OBJDIR)/log1p.o
$(OBJDIR)/log1p.o: ./src/math/log1p.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/log1p.c -o $@
	echo [CC] $@
libm.a(atanh.o): $(OBJDIR)/atanh.o
$(OBJDIR)/atanh.o: ./src/math/atanh.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/atanh.c -o $@
	echo [CC] $@
libm.a(lrint.o): $(OBJDIR)/lrint.o
$(OBJDIR)/lrint.o: ./src/math/lrint.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/lrint.c -o $@
	echo [CC] $@
libm.a(ceil.o): $(OBJDIR)/ceil.o
$(OBJDIR)/ceil.o: ./src/math/ceil.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/ceil.c -o $@
	echo [CC] $@
libm.a(remainder.o): $(OBJDIR)/remainder.o
$(OBJDIR)/remainder.o: ./src/math/remainder.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/remainder.c -o $@
	echo [CC] $@
libm.a(fma.o): $(OBJDIR)/fma.o
$(OBJDIR)/fma.o: ./src/math/fma.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/fma.c -o $@
	echo [CC] $@
libm.a(log.o): $(OBJDIR)/log.o
$(OBJDIR)/log.o: ./src/math/log.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/log.c -o $@
	echo [CC] $@
libm.a(cbrt.o): $(OBJDIR)/cbrt.o
$(OBJDIR)/cbrt.o: ./src/math/cbrt.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/cbrt.c -o $@
	echo [CC] $@
libm.a(sinh.o): $(OBJDIR)/sinh.o
$(OBJDIR)/sinh.o: ./src/math/sinh.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/sinh.c -o $@
	echo [CC] $@
libc.a(iswspace.o): $(OBJDIR)/iswspace.o
$(OBJDIR)/iswspace.o: ./src/wctype/iswspace.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wctype/iswspace.c -o $@
	echo [CC] $@
libc.a(iswpunct.o): $(OBJDIR)/iswpunct.o
$(OBJDIR)/iswpunct.o: ./src/wctype/iswpunct.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wctype/iswpunct.c -o $@
	echo [CC] $@
libc.a(iswctype.o): $(OBJDIR)/iswctype.o
$(OBJDIR)/iswctype.o: ./src/wctype/iswctype.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wctype/iswctype.c -o $@
	echo [CC] $@
libc.a(iswalpha.o): $(OBJDIR)/iswalpha.o
$(OBJDIR)/iswalpha.o: ./src/wctype/iswalpha.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wctype/iswalpha.c -o $@
	echo [CC] $@
libc.a(iswxdigit.o): $(OBJDIR)/iswxdigit.o
$(OBJDIR)/iswxdigit.o: ./src/wctype/iswxdigit.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wctype/iswxdigit.c -o $@
	echo [CC] $@
libc.a(iswcntrl.o): $(OBJDIR)/iswcntrl.o
$(OBJDIR)/iswcntrl.o: ./src/wctype/iswcntrl.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wctype/iswcntrl.c -o $@
	echo [CC] $@
libc.a(iswgraph.o): $(OBJDIR)/iswgraph.o
$(OBJDIR)/iswgraph.o: ./src/wctype/iswgraph.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wctype/iswgraph.c -o $@
	echo [CC] $@
libc.a(iswblank.o): $(OBJDIR)/iswblank.o
$(OBJDIR)/iswblank.o: ./src/wctype/iswblank.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wctype/iswblank.c -o $@
	echo [CC] $@
libc.a(wctype.o): $(OBJDIR)/wctype.o
$(OBJDIR)/wctype.o: ./src/wctype/wctype.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wctype/wctype.c -o $@
	echo [CC] $@
libc.a(towctrans.o): $(OBJDIR)/towctrans.o
$(OBJDIR)/towctrans.o: ./src/wctype/towctrans.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wctype/towctrans.c -o $@
	echo [CC] $@
libc.a(towlower.o): $(OBJDIR)/towlower.o
$(OBJDIR)/towlower.o: ./src/wctype/towlower.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wctype/towlower.c -o $@
	echo [CC] $@
libc.a(iswlower.o): $(OBJDIR)/iswlower.o
$(OBJDIR)/iswlower.o: ./src/wctype/iswlower.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wctype/iswlower.c -o $@
	echo [CC] $@
libc.a(iswprint.o): $(OBJDIR)/iswprint.o
$(OBJDIR)/iswprint.o: ./src/wctype/iswprint.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wctype/iswprint.c -o $@
	echo [CC] $@
libc.a(towupper.o): $(OBJDIR)/towupper.o
$(OBJDIR)/towupper.o: ./src/wctype/towupper.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wctype/towupper.c -o $@
	echo [CC] $@
libc.a(wctrans.o): $(OBJDIR)/wctrans.o
$(OBJDIR)/wctrans.o: ./src/wctype/wctrans.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wctype/wctrans.c -o $@
	echo [CC] $@
libc.a(iswupper.o): $(OBJDIR)/iswupper.o
$(OBJDIR)/iswupper.o: ./src/wctype/iswupper.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wctype/iswupper.c -o $@
	echo [CC] $@
libc.a(iswdigit.o): $(OBJDIR)/iswdigit.o
$(OBJDIR)/iswdigit.o: ./src/wctype/iswdigit.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wctype/iswdigit.c -o $@
	echo [CC] $@
libc.a(iswalnum.o): $(OBJDIR)/iswalnum.o
$(OBJDIR)/iswalnum.o: ./src/wctype/iswalnum.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wctype/iswalnum.c -o $@
	echo [CC] $@
libc.a(va_list.o): $(OBJDIR)/va_list.o
$(OBJDIR)/va_list.o: ./src/varargs/va_list.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/varargs/va_list.c -o $@
	echo [CC] $@
libc.a(va_alist.o): $(OBJDIR)/va_alist.o
$(OBJDIR)/va_alist.o: ./src/varargs/va_alist.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/varargs/va_alist.c -o $@
	echo [CC] $@
libc.a(va_arg.o): $(OBJDIR)/va_arg.o
$(OBJDIR)/va_arg.o: ./src/varargs/va_arg.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/varargs/va_arg.c -o $@
	echo [CC] $@
libc.a(va_dcl.o): $(OBJDIR)/va_dcl.o
$(OBJDIR)/va_dcl.o: ./src/varargs/va_dcl.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/varargs/va_dcl.c -o $@
	echo [CC] $@
libc.a(va_start.o): $(OBJDIR)/va_start.o
$(OBJDIR)/va_start.o: ./src/varargs/va_start.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/varargs/va_start.c -o $@
	echo [CC] $@
libc.a(va_end.o): $(OBJDIR)/va_end.o
$(OBJDIR)/va_end.o: ./src/varargs/va_end.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/varargs/va_end.c -o $@
	echo [CC] $@
librt.a(aio_return.o): $(OBJDIR)/aio_return.o
$(OBJDIR)/aio_return.o: ./src/aio/aio_return.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/aio/aio_return.c -o $@
	echo [CC] $@
librt.a(aio_cancel.o): $(OBJDIR)/aio_cancel.o
$(OBJDIR)/aio_cancel.o: ./src/aio/aio_cancel.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/aio/aio_cancel.c -o $@
	echo [CC] $@
librt.a(aio_error.o): $(OBJDIR)/aio_error.o
$(OBJDIR)/aio_error.o: ./src/aio/aio_error.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/aio/aio_error.c -o $@
	echo [CC] $@
librt.a(lio_listio.o): $(OBJDIR)/lio_listio.o
$(OBJDIR)/lio_listio.o: ./src/aio/lio_listio.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/aio/lio_listio.c -o $@
	echo [CC] $@
librt.a(aio_fsync.o): $(OBJDIR)/aio_fsync.o
$(OBJDIR)/aio_fsync.o: ./src/aio/aio_fsync.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/aio/aio_fsync.c -o $@
	echo [CC] $@
librt.a(aio_write.o): $(OBJDIR)/aio_write.o
$(OBJDIR)/aio_write.o: ./src/aio/aio_write.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/aio/aio_write.c -o $@
	echo [CC] $@
librt.a(aio_read.o): $(OBJDIR)/aio_read.o
$(OBJDIR)/aio_read.o: ./src/aio/aio_read.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/aio/aio_read.c -o $@
	echo [CC] $@
librt.a(aio_suspend.o): $(OBJDIR)/aio_suspend.o
$(OBJDIR)/aio_suspend.o: ./src/aio/aio_suspend.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/aio/aio_suspend.c -o $@
	echo [CC] $@
libc.a(glob.o): $(OBJDIR)/glob.o
$(OBJDIR)/glob.o: ./src/glob/glob.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/glob/glob.c -o $@
	echo [CC] $@
libc.a(globfree.o): $(OBJDIR)/globfree.o
$(OBJDIR)/globfree.o: ./src/glob/globfree.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/glob/globfree.c -o $@
	echo [CC] $@
libc.a(nftw.o): $(OBJDIR)/nftw.o
$(OBJDIR)/nftw.o: ./src/ftw/nftw.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/ftw/nftw.c -o $@
	echo [CC] $@
libc.a(ftw.o): $(OBJDIR)/ftw.o
$(OBJDIR)/ftw.o: ./src/ftw/ftw.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/ftw/ftw.c -o $@
	echo [CC] $@
libc.a(__main.o): $(OBJDIR)/__main.o
$(OBJDIR)/__main.o: ./src/__main.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/__main.c -o $@
	echo [CC] $@
libc.a(loc1.o): $(OBJDIR)/loc1.o
$(OBJDIR)/loc1.o: ./src/regexp/loc1.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/regexp/loc1.c -o $@
	echo [CC] $@
libc.a(compile.o): $(OBJDIR)/compile.o
$(OBJDIR)/compile.o: ./src/regexp/compile.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/regexp/compile.c -o $@
	echo [CC] $@
libc.a(step.o): $(OBJDIR)/step.o
$(OBJDIR)/step.o: ./src/regexp/step.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/regexp/step.c -o $@
	echo [CC] $@
libc.a(locs.o): $(OBJDIR)/locs.o
$(OBJDIR)/locs.o: ./src/regexp/locs.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/regexp/locs.c -o $@
	echo [CC] $@
libc.a(loc2.o): $(OBJDIR)/loc2.o
$(OBJDIR)/loc2.o: ./src/regexp/loc2.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/regexp/loc2.c -o $@
	echo [CC] $@
libc.a(advance.o): $(OBJDIR)/advance.o
$(OBJDIR)/advance.o: ./src/regexp/advance.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/regexp/advance.c -o $@
	echo [CC] $@
libc.a(thrd_equal.o): $(OBJDIR)/thrd_equal.o
$(OBJDIR)/thrd_equal.o: ./src/threads/thrd_equal.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/threads/thrd_equal.c -o $@
	echo [CC] $@
libc.a(thrd_create.o): $(OBJDIR)/thrd_create.o
$(OBJDIR)/thrd_create.o: ./src/threads/thrd_create.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/threads/thrd_create.c -o $@
	echo [CC] $@
libc.a(thrd_sleep.o): $(OBJDIR)/thrd_sleep.o
$(OBJDIR)/thrd_sleep.o: ./src/threads/thrd_sleep.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/threads/thrd_sleep.c -o $@
	echo [CC] $@
libc.a(tss_delete.o): $(OBJDIR)/tss_delete.o
$(OBJDIR)/tss_delete.o: ./src/threads/tss_delete.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/threads/tss_delete.c -o $@
	echo [CC] $@
libc.a(tss_set.o): $(OBJDIR)/tss_set.o
$(OBJDIR)/tss_set.o: ./src/threads/tss_set.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/threads/tss_set.c -o $@
	echo [CC] $@
libc.a(cnd_timedwait.o): $(OBJDIR)/cnd_timedwait.o
$(OBJDIR)/cnd_timedwait.o: ./src/threads/cnd_timedwait.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/threads/cnd_timedwait.c -o $@
	echo [CC] $@
libc.a(mtx_timedlock.o): $(OBJDIR)/mtx_timedlock.o
$(OBJDIR)/mtx_timedlock.o: ./src/threads/mtx_timedlock.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/threads/mtx_timedlock.c -o $@
	echo [CC] $@
libc.a(mtx_unlock.o): $(OBJDIR)/mtx_unlock.o
$(OBJDIR)/mtx_unlock.o: ./src/threads/mtx_unlock.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/threads/mtx_unlock.c -o $@
	echo [CC] $@
libc.a(thrd_current.o): $(OBJDIR)/thrd_current.o
$(OBJDIR)/thrd_current.o: ./src/threads/thrd_current.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/threads/thrd_current.c -o $@
	echo [CC] $@
libc.a(mtx_trylock.o): $(OBJDIR)/mtx_trylock.o
$(OBJDIR)/mtx_trylock.o: ./src/threads/mtx_trylock.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/threads/mtx_trylock.c -o $@
	echo [CC] $@
libc.a(_enums.o): $(OBJDIR)/_enums.o
$(OBJDIR)/_enums.o: ./src/threads/_enums.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/threads/_enums.c -o $@
	echo [CC] $@
libc.a(cnd_destroy.o): $(OBJDIR)/cnd_destroy.o
$(OBJDIR)/cnd_destroy.o: ./src/threads/cnd_destroy.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/threads/cnd_destroy.c -o $@
	echo [CC] $@
libc.a(thrd_exit.o): $(OBJDIR)/thrd_exit.o
$(OBJDIR)/thrd_exit.o: ./src/threads/thrd_exit.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/threads/thrd_exit.c -o $@
	echo [CC] $@
libc.a(thrd_join.o): $(OBJDIR)/thrd_join.o
$(OBJDIR)/thrd_join.o: ./src/threads/thrd_join.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/threads/thrd_join.c -o $@
	echo [CC] $@
libc.a(tss_create.o): $(OBJDIR)/tss_create.o
$(OBJDIR)/tss_create.o: ./src/threads/tss_create.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/threads/tss_create.c -o $@
	echo [CC] $@
libc.a(tss_get.o): $(OBJDIR)/tss_get.o
$(OBJDIR)/tss_get.o: ./src/threads/tss_get.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/threads/tss_get.c -o $@
	echo [CC] $@
libc.a(thrd_yield.o): $(OBJDIR)/thrd_yield.o
$(OBJDIR)/thrd_yield.o: ./src/threads/thrd_yield.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/threads/thrd_yield.c -o $@
	echo [CC] $@
libc.a(call_once.o): $(OBJDIR)/call_once.o
$(OBJDIR)/call_once.o: ./src/threads/call_once.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/threads/call_once.c -o $@
	echo [CC] $@
libc.a(mtx_init.o): $(OBJDIR)/mtx_init.o
$(OBJDIR)/mtx_init.o: ./src/threads/mtx_init.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/threads/mtx_init.c -o $@
	echo [CC] $@
libc.a(cnd_signal.o): $(OBJDIR)/cnd_signal.o
$(OBJDIR)/cnd_signal.o: ./src/threads/cnd_signal.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/threads/cnd_signal.c -o $@
	echo [CC] $@
libc.a(mtx_lock.o): $(OBJDIR)/mtx_lock.o
$(OBJDIR)/mtx_lock.o: ./src/threads/mtx_lock.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/threads/mtx_lock.c -o $@
	echo [CC] $@
libc.a(cnd_broadcast.o): $(OBJDIR)/cnd_broadcast.o
$(OBJDIR)/cnd_broadcast.o: ./src/threads/cnd_broadcast.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/threads/cnd_broadcast.c -o $@
	echo [CC] $@
libc.a(cnd_init.o): $(OBJDIR)/cnd_init.o
$(OBJDIR)/cnd_init.o: ./src/threads/cnd_init.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/threads/cnd_init.c -o $@
	echo [CC] $@
libc.a(mtx_destroy.o): $(OBJDIR)/mtx_destroy.o
$(OBJDIR)/mtx_destroy.o: ./src/threads/mtx_destroy.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/threads/mtx_destroy.c -o $@
	echo [CC] $@
libc.a(cnd_wait.o): $(OBJDIR)/cnd_wait.o
$(OBJDIR)/cnd_wait.o: ./src/threads/cnd_wait.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/threads/cnd_wait.c -o $@
	echo [CC] $@
libc.a(thrd_detach.o): $(OBJDIR)/thrd_detach.o
$(OBJDIR)/thrd_detach.o: ./src/threads/thrd_detach.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/threads/thrd_detach.c -o $@
	echo [CC] $@
libc.a(gcvt.o): $(OBJDIR)/gcvt.o
$(OBJDIR)/gcvt.o: ./src/stdlib/gcvt.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdlib/gcvt.c -o $@
	echo [CC] $@
libc.a(exit.o): $(OBJDIR)/exit.o
$(OBJDIR)/exit.o: ./src/stdlib/exit.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdlib/exit.c -o $@
	echo [CC] $@
libc.a(random.o): $(OBJDIR)/random.o
$(OBJDIR)/random.o: ./src/stdlib/random.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdlib/random.c -o $@
	echo [CC] $@
libc.a(labs.o): $(OBJDIR)/labs.o
$(OBJDIR)/labs.o: ./src/stdlib/labs.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdlib/labs.c -o $@
	echo [CC] $@
libc.a(strtoll.o): $(OBJDIR)/strtoll.o
$(OBJDIR)/strtoll.o: ./src/stdlib/strtoll.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdlib/strtoll.c -o $@
	echo [CC] $@
libc.a(fcvt.o): $(OBJDIR)/fcvt.o
$(OBJDIR)/fcvt.o: ./src/stdlib/fcvt.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdlib/fcvt.c -o $@
	echo [CC] $@
libc.a(ptsname.o): $(OBJDIR)/ptsname.o
$(OBJDIR)/ptsname.o: ./src/stdlib/ptsname.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdlib/ptsname.c -o $@
	echo [CC] $@
libc.a(qsort.o): $(OBJDIR)/qsort.o
$(OBJDIR)/qsort.o: ./src/stdlib/qsort.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdlib/qsort.c -o $@
	echo [CC] $@
libc.a(setkey.o): $(OBJDIR)/setkey.o
$(OBJDIR)/setkey.o: ./src/stdlib/setkey.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdlib/setkey.c -o $@
	echo [CC] $@
libc.a(setstate.o): $(OBJDIR)/setstate.o
$(OBJDIR)/setstate.o: ./src/stdlib/setstate.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdlib/setstate.c -o $@
	echo [CC] $@
libc.a(wctomb.o): $(OBJDIR)/wctomb.o
$(OBJDIR)/wctomb.o: ./src/stdlib/wctomb.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdlib/wctomb.c -o $@
	echo [CC] $@
libc.a(free.o): $(OBJDIR)/free.o
$(OBJDIR)/free.o: ./src/stdlib/free.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdlib/free.c -o $@
	echo [CC] $@
libc.a(mblen.o): $(OBJDIR)/mblen.o
$(OBJDIR)/mblen.o: ./src/stdlib/mblen.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdlib/mblen.c -o $@
	echo [CC] $@
libc.a(lcong48.o): $(OBJDIR)/lcong48.o
$(OBJDIR)/lcong48.o: ./src/stdlib/lcong48.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdlib/lcong48.c -o $@
	echo [CC] $@
libc.a(mrand48.o): $(OBJDIR)/mrand48.o
$(OBJDIR)/mrand48.o: ./src/stdlib/mrand48.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdlib/mrand48.c -o $@
	echo [CC] $@
libc.a(strtold.o): $(OBJDIR)/strtold.o
$(OBJDIR)/strtold.o: ./src/stdlib/strtold.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdlib/strtold.c -o $@
	echo [CC] $@
libc.a(system.o): $(OBJDIR)/system.o
$(OBJDIR)/system.o: ./src/stdlib/system.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdlib/system.c -o $@
	echo [CC] $@
libc.a(abs.o): $(OBJDIR)/abs.o
$(OBJDIR)/abs.o: ./src/stdlib/abs.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdlib/abs.c -o $@
	echo [CC] $@
libc.a(srandom.o): $(OBJDIR)/srandom.o
$(OBJDIR)/srandom.o: ./src/stdlib/srandom.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdlib/srandom.c -o $@
	echo [CC] $@
libc.a(lldiv.o): $(OBJDIR)/lldiv.o
$(OBJDIR)/lldiv.o: ./src/stdlib/lldiv.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdlib/lldiv.c -o $@
	echo [CC] $@
libc.a(ecvt.o): $(OBJDIR)/ecvt.o
$(OBJDIR)/ecvt.o: ./src/stdlib/ecvt.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdlib/ecvt.c -o $@
	echo [CC] $@
libc.a(mktemp.o): $(OBJDIR)/mktemp.o
$(OBJDIR)/mktemp.o: ./src/stdlib/mktemp.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdlib/mktemp.c -o $@
	echo [CC] $@
libc.a(bsearch.o): $(OBJDIR)/bsearch.o
$(OBJDIR)/bsearch.o: ./src/stdlib/bsearch.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdlib/bsearch.c -o $@
	echo [CC] $@
libc.a(strtof.o): $(OBJDIR)/strtof.o
$(OBJDIR)/strtof.o: ./src/stdlib/strtof.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdlib/strtof.c -o $@
	echo [CC] $@
libc.a(srand48.o): $(OBJDIR)/srand48.o
$(OBJDIR)/srand48.o: ./src/stdlib/srand48.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdlib/srand48.c -o $@
	echo [CC] $@
libc.a(putenv.o): $(OBJDIR)/putenv.o
$(OBJDIR)/putenv.o: ./src/stdlib/putenv.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdlib/putenv.c -o $@
	echo [CC] $@
libc.a(nrand48.o): $(OBJDIR)/nrand48.o
$(OBJDIR)/nrand48.o: ./src/stdlib/nrand48.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdlib/nrand48.c -o $@
	echo [CC] $@
libc.a(malloc.o): $(OBJDIR)/malloc.o
$(OBJDIR)/malloc.o: ./src/stdlib/malloc.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdlib/malloc.c -o $@
	echo [CC] $@
libc.a(initstate.o): $(OBJDIR)/initstate.o
$(OBJDIR)/initstate.o: ./src/stdlib/initstate.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdlib/initstate.c -o $@
	echo [CC] $@
libc.a(getenv.o): $(OBJDIR)/getenv.o
$(OBJDIR)/getenv.o: ./src/stdlib/getenv.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdlib/getenv.c -o $@
	echo [CC] $@
libc.a(calloc.o): $(OBJDIR)/calloc.o
$(OBJDIR)/calloc.o: ./src/stdlib/calloc.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdlib/calloc.c -o $@
	echo [CC] $@
libc.a(mbstowcs.o): $(OBJDIR)/mbstowcs.o
$(OBJDIR)/mbstowcs.o: ./src/stdlib/mbstowcs.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdlib/mbstowcs.c -o $@
	echo [CC] $@
libc.a(_Exit.o): $(OBJDIR)/_Exit.o
$(OBJDIR)/_Exit.o: ./src/stdlib/_Exit.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdlib/_Exit.c -o $@
	echo [CC] $@
libc.a(__stdlib.o): $(OBJDIR)/__stdlib.o
$(OBJDIR)/__stdlib.o: ./src/stdlib/__stdlib.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdlib/__stdlib.c -o $@
	echo [CC] $@
libc.a(jrand48.o): $(OBJDIR)/jrand48.o
$(OBJDIR)/jrand48.o: ./src/stdlib/jrand48.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdlib/jrand48.c -o $@
	echo [CC] $@
libc.a(erand48.o): $(OBJDIR)/erand48.o
$(OBJDIR)/erand48.o: ./src/stdlib/erand48.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdlib/erand48.c -o $@
	echo [CC] $@
libc.a(ttyslot.o): $(OBJDIR)/ttyslot.o
$(OBJDIR)/ttyslot.o: ./src/stdlib/ttyslot.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdlib/ttyslot.c -o $@
	echo [CC] $@
libc.a(getsubopt.o): $(OBJDIR)/getsubopt.o
$(OBJDIR)/getsubopt.o: ./src/stdlib/getsubopt.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdlib/getsubopt.c -o $@
	echo [CC] $@
libc.a(abort.o): $(OBJDIR)/abort.o
$(OBJDIR)/abort.o: ./src/stdlib/abort.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdlib/abort.c -o $@
	echo [CC] $@
libc.a(strtoul.o): $(OBJDIR)/strtoul.o
$(OBJDIR)/strtoul.o: ./src/stdlib/strtoul.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdlib/strtoul.c -o $@
	echo [CC] $@
libc.a(atoi.o): $(OBJDIR)/atoi.o
$(OBJDIR)/atoi.o: ./src/stdlib/atoi.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdlib/atoi.c -o $@
	echo [CC] $@
libc.a(div.o): $(OBJDIR)/div.o
$(OBJDIR)/div.o: ./src/stdlib/div.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdlib/div.c -o $@
	echo [CC] $@
libc.a(strtoull.o): $(OBJDIR)/strtoull.o
$(OBJDIR)/strtoull.o: ./src/stdlib/strtoull.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdlib/strtoull.c -o $@
	echo [CC] $@
libc.a(mkstemp.o): $(OBJDIR)/mkstemp.o
$(OBJDIR)/mkstemp.o: ./src/stdlib/mkstemp.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdlib/mkstemp.c -o $@
	echo [CC] $@
libc.a(drand48.o): $(OBJDIR)/drand48.o
$(OBJDIR)/drand48.o: ./src/stdlib/drand48.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdlib/drand48.c -o $@
	echo [CC] $@
libc.a(wcstombs.o): $(OBJDIR)/wcstombs.o
$(OBJDIR)/wcstombs.o: ./src/stdlib/wcstombs.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdlib/wcstombs.c -o $@
	echo [CC] $@
libc.a(llabs.o): $(OBJDIR)/llabs.o
$(OBJDIR)/llabs.o: ./src/stdlib/llabs.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdlib/llabs.c -o $@
	echo [CC] $@
libc.a(realloc.o): $(OBJDIR)/realloc.o
$(OBJDIR)/realloc.o: ./src/stdlib/realloc.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdlib/realloc.c -o $@
	echo [CC] $@
libc.a(rand.o): $(OBJDIR)/rand.o
$(OBJDIR)/rand.o: ./src/stdlib/rand.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdlib/rand.c -o $@
	echo [CC] $@
libc.a(lrand48.o): $(OBJDIR)/lrand48.o
$(OBJDIR)/lrand48.o: ./src/stdlib/lrand48.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdlib/lrand48.c -o $@
	echo [CC] $@
libc.a(unlockpt.o): $(OBJDIR)/unlockpt.o
$(OBJDIR)/unlockpt.o: ./src/stdlib/unlockpt.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdlib/unlockpt.c -o $@
	echo [CC] $@
libc.a(strtod.o): $(OBJDIR)/strtod.o
$(OBJDIR)/strtod.o: ./src/stdlib/strtod.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdlib/strtod.c -o $@
	echo [CC] $@
libc.a(a64l.o): $(OBJDIR)/a64l.o
$(OBJDIR)/a64l.o: ./src/stdlib/a64l.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdlib/a64l.c -o $@
	echo [CC] $@
libc.a(mbtowc.o): $(OBJDIR)/mbtowc.o
$(OBJDIR)/mbtowc.o: ./src/stdlib/mbtowc.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdlib/mbtowc.c -o $@
	echo [CC] $@
libc.a(ldiv.o): $(OBJDIR)/ldiv.o
$(OBJDIR)/ldiv.o: ./src/stdlib/ldiv.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdlib/ldiv.c -o $@
	echo [CC] $@
libc.a(realpath.o): $(OBJDIR)/realpath.o
$(OBJDIR)/realpath.o: ./src/stdlib/realpath.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdlib/realpath.c -o $@
	echo [CC] $@
libc.a(atoll.o): $(OBJDIR)/atoll.o
$(OBJDIR)/atoll.o: ./src/stdlib/atoll.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdlib/atoll.c -o $@
	echo [CC] $@
libc.a(valloc.o): $(OBJDIR)/valloc.o
$(OBJDIR)/valloc.o: ./src/stdlib/valloc.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdlib/valloc.c -o $@
	echo [CC] $@
libc.a(grantpt.o): $(OBJDIR)/grantpt.o
$(OBJDIR)/grantpt.o: ./src/stdlib/grantpt.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdlib/grantpt.c -o $@
	echo [CC] $@
libc.a(srand.o): $(OBJDIR)/srand.o
$(OBJDIR)/srand.o: ./src/stdlib/srand.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdlib/srand.c -o $@
	echo [CC] $@
libc.a(strtol.o): $(OBJDIR)/strtol.o
$(OBJDIR)/strtol.o: ./src/stdlib/strtol.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdlib/strtol.c -o $@
	echo [CC] $@
libc.a(atexit.o): $(OBJDIR)/atexit.o
$(OBJDIR)/atexit.o: ./src/stdlib/atexit.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdlib/atexit.c -o $@
	echo [CC] $@
libc.a(seed48.o): $(OBJDIR)/seed48.o
$(OBJDIR)/seed48.o: ./src/stdlib/seed48.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdlib/seed48.c -o $@
	echo [CC] $@
libc.a(atof.o): $(OBJDIR)/atof.o
$(OBJDIR)/atof.o: ./src/stdlib/atof.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdlib/atof.c -o $@
	echo [CC] $@
libc.a(atol.o): $(OBJDIR)/atol.o
$(OBJDIR)/atol.o: ./src/stdlib/atol.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdlib/atol.c -o $@
	echo [CC] $@
libc.a(l64a.o): $(OBJDIR)/l64a.o
$(OBJDIR)/l64a.o: ./src/stdlib/l64a.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdlib/l64a.c -o $@
	echo [CC] $@
libc.a(regcmp.o): $(OBJDIR)/regcmp.o
$(OBJDIR)/regcmp.o: ./src/libgen/regcmp.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/libgen/regcmp.c -o $@
	echo [CC] $@
libc.a(basename.o): $(OBJDIR)/basename.o
$(OBJDIR)/basename.o: ./src/libgen/basename.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/libgen/basename.c -o $@
	echo [CC] $@
libc.a(dirname.o): $(OBJDIR)/dirname.o
$(OBJDIR)/dirname.o: ./src/libgen/dirname.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/libgen/dirname.c -o $@
	echo [CC] $@
libc.a(regex.o): $(OBJDIR)/regex.o
$(OBJDIR)/regex.o: ./src/libgen/regex.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/libgen/regex.c -o $@
	echo [CC] $@
libc.a(__loc1.o): $(OBJDIR)/__loc1.o
$(OBJDIR)/__loc1.o: ./src/libgen/__loc1.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/libgen/__loc1.c -o $@
	echo [CC] $@
libc.a(raise.o): $(OBJDIR)/raise.o
$(OBJDIR)/raise.o: ./src/signal/raise.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/signal/raise.c -o $@
	echo [CC] $@
libc.a(sigismember.o): $(OBJDIR)/sigismember.o
$(OBJDIR)/sigismember.o: ./src/signal/sigismember.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/signal/sigismember.c -o $@
	echo [CC] $@
libc.a(siginterrupt.o): $(OBJDIR)/siginterrupt.o
$(OBJDIR)/siginterrupt.o: ./src/signal/siginterrupt.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/signal/siginterrupt.c -o $@
	echo [CC] $@
libc.a(signal.o): $(OBJDIR)/signal.o
$(OBJDIR)/signal.o: ./src/signal/signal.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/signal/signal.c -o $@
	echo [CC] $@
libc.a(kill.o): $(OBJDIR)/kill.o
$(OBJDIR)/kill.o: ./src/signal/kill.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/signal/kill.c -o $@
	echo [CC] $@
libc.a(sighold.o): $(OBJDIR)/sighold.o
$(OBJDIR)/sighold.o: ./src/signal/sighold.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/signal/sighold.c -o $@
	echo [CC] $@
libc.a(sigfillset.o): $(OBJDIR)/sigfillset.o
$(OBJDIR)/sigfillset.o: ./src/signal/sigfillset.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/signal/sigfillset.c -o $@
	echo [CC] $@
libc.a(sigqueue.o): $(OBJDIR)/sigqueue.o
$(OBJDIR)/sigqueue.o: ./src/signal/sigqueue.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/signal/sigqueue.c -o $@
	echo [CC] $@
libc.a(sigignore.o): $(OBJDIR)/sigignore.o
$(OBJDIR)/sigignore.o: ./src/signal/sigignore.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/signal/sigignore.c -o $@
	echo [CC] $@
libc.a(sigset.o): $(OBJDIR)/sigset.o
$(OBJDIR)/sigset.o: ./src/signal/sigset.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/signal/sigset.c -o $@
	echo [CC] $@
libc.a(bsd_signal.o): $(OBJDIR)/bsd_signal.o
$(OBJDIR)/bsd_signal.o: ./src/signal/bsd_signal.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/signal/bsd_signal.c -o $@
	echo [CC] $@
libc.a(sigtimedwait.o): $(OBJDIR)/sigtimedwait.o
$(OBJDIR)/sigtimedwait.o: ./src/signal/sigtimedwait.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/signal/sigtimedwait.c -o $@
	echo [CC] $@
libc.a(sigwaitinfo.o): $(OBJDIR)/sigwaitinfo.o
$(OBJDIR)/sigwaitinfo.o: ./src/signal/sigwaitinfo.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/signal/sigwaitinfo.c -o $@
	echo [CC] $@
libc.a(sigaltstack.o): $(OBJDIR)/sigaltstack.o
$(OBJDIR)/sigaltstack.o: ./src/signal/sigaltstack.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/signal/sigaltstack.c -o $@
	echo [CC] $@
libc.a(sigmask.o): $(OBJDIR)/sigmask.o
$(OBJDIR)/sigmask.o: ./src/signal/sigmask.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/signal/sigmask.c -o $@
	echo [CC] $@
libc.a(sigemptyset.o): $(OBJDIR)/sigemptyset.o
$(OBJDIR)/sigemptyset.o: ./src/signal/sigemptyset.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/signal/sigemptyset.c -o $@
	echo [CC] $@
libc.a(sigaddset.o): $(OBJDIR)/sigaddset.o
$(OBJDIR)/sigaddset.o: ./src/signal/sigaddset.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/signal/sigaddset.c -o $@
	echo [CC] $@
libc.a(sigpause.o): $(OBJDIR)/sigpause.o
$(OBJDIR)/sigpause.o: ./src/signal/sigpause.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/signal/sigpause.c -o $@
	echo [CC] $@
libc.a(sigsuspend.o): $(OBJDIR)/sigsuspend.o
$(OBJDIR)/sigsuspend.o: ./src/signal/sigsuspend.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/signal/sigsuspend.c -o $@
	echo [CC] $@
libc.a(sigpending.o): $(OBJDIR)/sigpending.o
$(OBJDIR)/sigpending.o: ./src/signal/sigpending.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/signal/sigpending.c -o $@
	echo [CC] $@
libc.a(sigstack.o): $(OBJDIR)/sigstack.o
$(OBJDIR)/sigstack.o: ./src/signal/sigstack.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/signal/sigstack.c -o $@
	echo [CC] $@
libc.a(sigdelset.o): $(OBJDIR)/sigdelset.o
$(OBJDIR)/sigdelset.o: ./src/signal/sigdelset.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/signal/sigdelset.c -o $@
	echo [CC] $@
libc.a(sigrelse.o): $(OBJDIR)/sigrelse.o
$(OBJDIR)/sigrelse.o: ./src/signal/sigrelse.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/signal/sigrelse.c -o $@
	echo [CC] $@
libc.a(sigprocmask.o): $(OBJDIR)/sigprocmask.o
$(OBJDIR)/sigprocmask.o: ./src/signal/sigprocmask.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/signal/sigprocmask.c -o $@
	echo [CC] $@
libc.a(sigaction.o): $(OBJDIR)/sigaction.o
$(OBJDIR)/sigaction.o: ./src/signal/sigaction.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/signal/sigaction.c -o $@
	echo [CC] $@
libc.a(killpg.o): $(OBJDIR)/killpg.o
$(OBJDIR)/killpg.o: ./src/signal/killpg.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/signal/killpg.c -o $@
	echo [CC] $@

include $(TOPDIR)/.deps/libc.C_0
include $(TOPDIR)/.deps/libc.C_1
include $(TOPDIR)/.deps/libc.C_199409
include $(TOPDIR)/.deps/libc.C_199901
include $(TOPDIR)/.deps/libc.C_201112
include $(TOPDIR)/.deps/libc.POSIX_1
include $(TOPDIR)/.deps/libc.POSIX_199309
include $(TOPDIR)/.deps/libc.POSIX_199506
include $(TOPDIR)/.deps/libc.POSIX_2
include $(TOPDIR)/.deps/libc.POSIX_200112
include $(TOPDIR)/.deps/libc.POSIX_200809
include $(TOPDIR)/.deps/libc.XOPEN_4
include $(TOPDIR)/.deps/libc.XOPEN_400
include $(TOPDIR)/.deps/libcurses.XOPEN_4
include $(TOPDIR)/.deps/libcurses.XOPEN_400
include $(TOPDIR)/.deps/libm.C_0
include $(TOPDIR)/.deps/libm.C_1
include $(TOPDIR)/.deps/libm.C_199901
include $(TOPDIR)/.deps/libm.POSIX_200112
include $(TOPDIR)/.deps/libm.XOPEN_4
include $(TOPDIR)/.deps/libm.XOPEN_400
include $(TOPDIR)/.deps/librt.POSIX_199309

