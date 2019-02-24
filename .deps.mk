include .config.mk

BASE_CFLAGS=-I$(INCDIR) -fno-builtin -nostdinc

libc.a(__libc_start.o): $(OBJDIR)/__libc_start.o
$(OBJDIR)/__libc_start.o: ./src/nonstd/__libc_start.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/nonstd/__libc_start.c -o $@

libc.a(__libc.o): $(OBJDIR)/__libc.o
$(OBJDIR)/__libc.o: ./src/nonstd/__libc.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/nonstd/__libc.c -o $@

libc.a(__STDC_HOSTED__.o): $(OBJDIR)/__STDC_HOSTED__.o
$(OBJDIR)/__STDC_HOSTED__.o: ./src/nonstd/_PREDEF/__STDC_HOSTED__.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/nonstd/_PREDEF/__STDC_HOSTED__.c -o $@

libc.a(__STDC_ISO_10646__.o): $(OBJDIR)/__STDC_ISO_10646__.o
$(OBJDIR)/__STDC_ISO_10646__.o: ./src/nonstd/_PREDEF/__STDC_ISO_10646__.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/nonstd/_PREDEF/__STDC_ISO_10646__.c -o $@

libc.a(__STDC_IEC_559_COMPLEX__.o): $(OBJDIR)/__STDC_IEC_559_COMPLEX__.o
$(OBJDIR)/__STDC_IEC_559_COMPLEX__.o: ./src/nonstd/_PREDEF/__STDC_IEC_559_COMPLEX__.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/nonstd/_PREDEF/__STDC_IEC_559_COMPLEX__.c -o $@

libc.a(__STDC_IEC_559__.o): $(OBJDIR)/__STDC_IEC_559__.o
$(OBJDIR)/__STDC_IEC_559__.o: ./src/nonstd/_PREDEF/__STDC_IEC_559__.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/nonstd/_PREDEF/__STDC_IEC_559__.c -o $@

libc.a(_XOPEN_SOURCE.o): $(OBJDIR)/_XOPEN_SOURCE.o
$(OBJDIR)/_XOPEN_SOURCE.o: ./src/nonstd/_FTM/_XOPEN_SOURCE.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/nonstd/_FTM/_XOPEN_SOURCE.c -o $@

libc.a(_POSIX_C_SOURCE.o): $(OBJDIR)/_POSIX_C_SOURCE.o
$(OBJDIR)/_POSIX_C_SOURCE.o: ./src/nonstd/_FTM/_POSIX_C_SOURCE.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/nonstd/_FTM/_POSIX_C_SOURCE.c -o $@

libc.a(_XOPEN_SOURCE_EXTENDED.o): $(OBJDIR)/_XOPEN_SOURCE_EXTENDED.o
$(OBJDIR)/_XOPEN_SOURCE_EXTENDED.o: ./src/nonstd/_FTM/_XOPEN_SOURCE_EXTENDED.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/nonstd/_FTM/_XOPEN_SOURCE_EXTENDED.c -o $@

libc.a(__syscall.o): $(OBJDIR)/__syscall.o
$(OBJDIR)/__syscall.o: ./src/nonstd/__syscall.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/nonstd/__syscall.c -o $@

libpthread.a(__pthread_per_thread.o): $(OBJDIR)/__pthread_per_thread.o
$(OBJDIR)/__pthread_per_thread.o: ./src/nonstd/__pthread_per_thread.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/nonstd/__pthread_per_thread.c -o $@

libc.a(__libc_per_thread.o): $(OBJDIR)/__libc_per_thread.o
$(OBJDIR)/__libc_per_thread.o: ./src/nonstd/__libc_per_thread.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/nonstd/__libc_per_thread.c -o $@

libc.a(sigaddset.o): $(OBJDIR)/sigaddset.o
$(OBJDIR)/sigaddset.o: ./src/signal/sigaddset.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/signal/sigaddset.c -o $@

libc.a(sigaltstack.o): $(OBJDIR)/sigaltstack.o
$(OBJDIR)/sigaltstack.o: ./src/signal/sigaltstack.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/signal/sigaltstack.c -o $@

libc.a(sigdelset.o): $(OBJDIR)/sigdelset.o
$(OBJDIR)/sigdelset.o: ./src/signal/sigdelset.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/signal/sigdelset.c -o $@

libc.a(raise.o): $(OBJDIR)/raise.o
$(OBJDIR)/raise.o: ./src/signal/raise.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/signal/raise.c -o $@

libc.a(sigqueue.o): $(OBJDIR)/sigqueue.o
$(OBJDIR)/sigqueue.o: ./src/signal/sigqueue.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/signal/sigqueue.c -o $@

libc.a(kill.o): $(OBJDIR)/kill.o
$(OBJDIR)/kill.o: ./src/signal/kill.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/signal/kill.c -o $@

libc.a(bsd_signal.o): $(OBJDIR)/bsd_signal.o
$(OBJDIR)/bsd_signal.o: ./src/signal/bsd_signal.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/signal/bsd_signal.c -o $@

libc.a(sigfillset.o): $(OBJDIR)/sigfillset.o
$(OBJDIR)/sigfillset.o: ./src/signal/sigfillset.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/signal/sigfillset.c -o $@

libc.a(killpg.o): $(OBJDIR)/killpg.o
$(OBJDIR)/killpg.o: ./src/signal/killpg.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/signal/killpg.c -o $@

libc.a(sigmask.o): $(OBJDIR)/sigmask.o
$(OBJDIR)/sigmask.o: ./src/signal/sigmask.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/signal/sigmask.c -o $@

libc.a(sigemptyset.o): $(OBJDIR)/sigemptyset.o
$(OBJDIR)/sigemptyset.o: ./src/signal/sigemptyset.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/signal/sigemptyset.c -o $@

libc.a(sigpending.o): $(OBJDIR)/sigpending.o
$(OBJDIR)/sigpending.o: ./src/signal/sigpending.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/signal/sigpending.c -o $@

libc.a(sighold.o): $(OBJDIR)/sighold.o
$(OBJDIR)/sighold.o: ./src/signal/sighold.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/signal/sighold.c -o $@

libc.a(sigstack.o): $(OBJDIR)/sigstack.o
$(OBJDIR)/sigstack.o: ./src/signal/sigstack.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/signal/sigstack.c -o $@

libc.a(sigpause.o): $(OBJDIR)/sigpause.o
$(OBJDIR)/sigpause.o: ./src/signal/sigpause.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/signal/sigpause.c -o $@

libc.a(sigtimedwait.o): $(OBJDIR)/sigtimedwait.o
$(OBJDIR)/sigtimedwait.o: ./src/signal/sigtimedwait.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/signal/sigtimedwait.c -o $@

libc.a(siginterrupt.o): $(OBJDIR)/siginterrupt.o
$(OBJDIR)/siginterrupt.o: ./src/signal/siginterrupt.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/signal/siginterrupt.c -o $@

libc.a(sigprocmask.o): $(OBJDIR)/sigprocmask.o
$(OBJDIR)/sigprocmask.o: ./src/signal/sigprocmask.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/signal/sigprocmask.c -o $@

libc.a(sigaction.o): $(OBJDIR)/sigaction.o
$(OBJDIR)/sigaction.o: ./src/signal/sigaction.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/signal/sigaction.c -o $@

libc.a(sigismember.o): $(OBJDIR)/sigismember.o
$(OBJDIR)/sigismember.o: ./src/signal/sigismember.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/signal/sigismember.c -o $@

libc.a(sigsuspend.o): $(OBJDIR)/sigsuspend.o
$(OBJDIR)/sigsuspend.o: ./src/signal/sigsuspend.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/signal/sigsuspend.c -o $@

libc.a(sigwaitinfo.o): $(OBJDIR)/sigwaitinfo.o
$(OBJDIR)/sigwaitinfo.o: ./src/signal/sigwaitinfo.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/signal/sigwaitinfo.c -o $@

libc.a(sigset.o): $(OBJDIR)/sigset.o
$(OBJDIR)/sigset.o: ./src/signal/sigset.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/signal/sigset.c -o $@

libc.a(sigrelse.o): $(OBJDIR)/sigrelse.o
$(OBJDIR)/sigrelse.o: ./src/signal/sigrelse.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/signal/sigrelse.c -o $@

libc.a(sigignore.o): $(OBJDIR)/sigignore.o
$(OBJDIR)/sigignore.o: ./src/signal/sigignore.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/signal/sigignore.c -o $@

libc.a(signal.o): $(OBJDIR)/signal.o
$(OBJDIR)/signal.o: ./src/signal/signal.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/signal/signal.c -o $@

libc.a(__errno.o): $(OBJDIR)/__errno.o
$(OBJDIR)/__errno.o: ./src/errno/__errno.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/errno/__errno.c -o $@

libc.a(iconv_open.o): $(OBJDIR)/iconv_open.o
$(OBJDIR)/iconv_open.o: ./src/iconv/iconv_open.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/iconv/iconv_open.c -o $@

libc.a(iconv_close.o): $(OBJDIR)/iconv_close.o
$(OBJDIR)/iconv_close.o: ./src/iconv/iconv_close.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/iconv/iconv_close.c -o $@

libc.a(iconv.o): $(OBJDIR)/iconv.o
$(OBJDIR)/iconv.o: ./src/iconv/iconv.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/iconv/iconv.c -o $@

libcurses.a(tgetflag.o): $(OBJDIR)/tgetflag.o
$(OBJDIR)/tgetflag.o: ./src/term/tgetflag.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/term/tgetflag.c -o $@

libcurses.a(tgetstr.o): $(OBJDIR)/tgetstr.o
$(OBJDIR)/tgetstr.o: ./src/term/tgetstr.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/term/tgetstr.c -o $@

libcurses.a(tputs.o): $(OBJDIR)/tputs.o
$(OBJDIR)/tputs.o: ./src/term/tputs.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/term/tputs.c -o $@

libcurses.a(setupterm.o): $(OBJDIR)/setupterm.o
$(OBJDIR)/setupterm.o: ./src/term/setupterm.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/term/setupterm.c -o $@

libcurses.a(tgetent.o): $(OBJDIR)/tgetent.o
$(OBJDIR)/tgetent.o: ./src/term/tgetent.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/term/tgetent.c -o $@

libcurses.a(tigetnum.o): $(OBJDIR)/tigetnum.o
$(OBJDIR)/tigetnum.o: ./src/term/tigetnum.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/term/tigetnum.c -o $@

libcurses.a(tparm.o): $(OBJDIR)/tparm.o
$(OBJDIR)/tparm.o: ./src/term/tparm.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/term/tparm.c -o $@

libcurses.a(set_curterm.o): $(OBJDIR)/set_curterm.o
$(OBJDIR)/set_curterm.o: ./src/term/set_curterm.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/term/set_curterm.c -o $@

libcurses.a(restartterm.o): $(OBJDIR)/restartterm.o
$(OBJDIR)/restartterm.o: ./src/term/restartterm.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/term/restartterm.c -o $@

libcurses.a(tgetnum.o): $(OBJDIR)/tgetnum.o
$(OBJDIR)/tgetnum.o: ./src/term/tgetnum.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/term/tgetnum.c -o $@

libcurses.a(putp.o): $(OBJDIR)/putp.o
$(OBJDIR)/putp.o: ./src/term/putp.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/term/putp.c -o $@

libcurses.a(cur_term.o): $(OBJDIR)/cur_term.o
$(OBJDIR)/cur_term.o: ./src/term/cur_term.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/term/cur_term.c -o $@

libc.a(TERMINAL.o): $(OBJDIR)/TERMINAL.o
$(OBJDIR)/TERMINAL.o: ./src/term/TERMINAL.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/term/TERMINAL.c -o $@

libcurses.a(tgoto.o): $(OBJDIR)/tgoto.o
$(OBJDIR)/tgoto.o: ./src/term/tgoto.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/term/tgoto.c -o $@

libcurses.a(tigetstr.o): $(OBJDIR)/tigetstr.o
$(OBJDIR)/tigetstr.o: ./src/term/tigetstr.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/term/tigetstr.c -o $@

libcurses.a(tiparm.o): $(OBJDIR)/tiparm.o
$(OBJDIR)/tiparm.o: ./src/term/tiparm.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/term/tiparm.c -o $@

libcurses.a(tigetflag.o): $(OBJDIR)/tigetflag.o
$(OBJDIR)/tigetflag.o: ./src/term/tigetflag.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/term/tigetflag.c -o $@

libcurses.a(del_curterm.o): $(OBJDIR)/del_curterm.o
$(OBJDIR)/del_curterm.o: ./src/term/del_curterm.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/term/del_curterm.c -o $@

libc.a(telldir.o): $(OBJDIR)/telldir.o
$(OBJDIR)/telldir.o: ./src/dirent/telldir.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/dirent/telldir.c -o $@

libc.a(rewinddir.o): $(OBJDIR)/rewinddir.o
$(OBJDIR)/rewinddir.o: ./src/dirent/rewinddir.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/dirent/rewinddir.c -o $@

libc.a(readdir.o): $(OBJDIR)/readdir.o
$(OBJDIR)/readdir.o: ./src/dirent/readdir.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/dirent/readdir.c -o $@

libc.a(closedir.o): $(OBJDIR)/closedir.o
$(OBJDIR)/closedir.o: ./src/dirent/closedir.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/dirent/closedir.c -o $@

libc.a(seekdir.o): $(OBJDIR)/seekdir.o
$(OBJDIR)/seekdir.o: ./src/dirent/seekdir.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/dirent/seekdir.c -o $@

libc.a(opendir.o): $(OBJDIR)/opendir.o
$(OBJDIR)/opendir.o: ./src/dirent/opendir.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/dirent/opendir.c -o $@

libc.a(imaxdiv.o): $(OBJDIR)/imaxdiv.o
$(OBJDIR)/imaxdiv.o: ./src/inttypes/imaxdiv.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/inttypes/imaxdiv.c -o $@

libc.a(imaxabs.o): $(OBJDIR)/imaxabs.o
$(OBJDIR)/imaxabs.o: ./src/inttypes/imaxabs.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/inttypes/imaxabs.c -o $@

libc.a(wcstoimax.o): $(OBJDIR)/wcstoimax.o
$(OBJDIR)/wcstoimax.o: ./src/inttypes/wcstoimax.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/inttypes/wcstoimax.c -o $@

libc.a(wcstoumax.o): $(OBJDIR)/wcstoumax.o
$(OBJDIR)/wcstoumax.o: ./src/inttypes/wcstoumax.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/inttypes/wcstoumax.c -o $@

libc.a(strtoimax.o): $(OBJDIR)/strtoimax.o
$(OBJDIR)/strtoimax.o: ./src/inttypes/strtoimax.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/inttypes/strtoimax.c -o $@

libc.a(strtoumax.o): $(OBJDIR)/strtoumax.o
$(OBJDIR)/strtoumax.o: ./src/inttypes/strtoumax.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/inttypes/strtoumax.c -o $@

libc.a(tdelete.o): $(OBJDIR)/tdelete.o
$(OBJDIR)/tdelete.o: ./src/search/tdelete.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/search/tdelete.c -o $@

libc.a(twalk.o): $(OBJDIR)/twalk.o
$(OBJDIR)/twalk.o: ./src/search/twalk.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/search/twalk.c -o $@

libc.a(lfind.o): $(OBJDIR)/lfind.o
$(OBJDIR)/lfind.o: ./src/search/lfind.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/search/lfind.c -o $@

libc.a(tsearch.o): $(OBJDIR)/tsearch.o
$(OBJDIR)/tsearch.o: ./src/search/tsearch.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/search/tsearch.c -o $@

libc.a(tfind.o): $(OBJDIR)/tfind.o
$(OBJDIR)/tfind.o: ./src/search/tfind.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/search/tfind.c -o $@

libc.a(hcreate.o): $(OBJDIR)/hcreate.o
$(OBJDIR)/hcreate.o: ./src/search/hcreate.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/search/hcreate.c -o $@

libc.a(lsearch.o): $(OBJDIR)/lsearch.o
$(OBJDIR)/lsearch.o: ./src/search/lsearch.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/search/lsearch.c -o $@

libc.a(remque.o): $(OBJDIR)/remque.o
$(OBJDIR)/remque.o: ./src/search/remque.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/search/remque.c -o $@

libc.a(insque.o): $(OBJDIR)/insque.o
$(OBJDIR)/insque.o: ./src/search/insque.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/search/insque.c -o $@

libc.a(hdestroy.o): $(OBJDIR)/hdestroy.o
$(OBJDIR)/hdestroy.o: ./src/search/hdestroy.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/search/hdestroy.c -o $@

libc.a(hsearch.o): $(OBJDIR)/hsearch.o
$(OBJDIR)/hsearch.o: ./src/search/hsearch.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/search/hsearch.c -o $@

libc.a(poll.o): $(OBJDIR)/poll.o
$(OBJDIR)/poll.o: ./src/poll/poll.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/poll/poll.c -o $@

libc.a(fcntl.o): $(OBJDIR)/fcntl.o
$(OBJDIR)/fcntl.o: ./src/fcntl/fcntl.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/fcntl/fcntl.c -o $@

libc.a(open.o): $(OBJDIR)/open.o
$(OBJDIR)/open.o: ./src/fcntl/open.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/fcntl/open.c -o $@

libc.a(creat.o): $(OBJDIR)/creat.o
$(OBJDIR)/creat.o: ./src/fcntl/creat.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/fcntl/creat.c -o $@

libc.a(fmtmsg.o): $(OBJDIR)/fmtmsg.o
$(OBJDIR)/fmtmsg.o: ./src/fmtmsg/fmtmsg.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/fmtmsg/fmtmsg.c -o $@

libc.a(getmsg.o): $(OBJDIR)/getmsg.o
$(OBJDIR)/getmsg.o: ./src/stropts/getmsg.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stropts/getmsg.c -o $@

libc.a(putmsg.o): $(OBJDIR)/putmsg.o
$(OBJDIR)/putmsg.o: ./src/stropts/putmsg.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stropts/putmsg.c -o $@

libc.a(ioctl.o): $(OBJDIR)/ioctl.o
$(OBJDIR)/ioctl.o: ./src/stropts/ioctl.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stropts/ioctl.c -o $@

libc.a(putpmsg.o): $(OBJDIR)/putpmsg.o
$(OBJDIR)/putpmsg.o: ./src/stropts/putpmsg.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stropts/putpmsg.c -o $@

libc.a(fdetach.o): $(OBJDIR)/fdetach.o
$(OBJDIR)/fdetach.o: ./src/stropts/fdetach.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stropts/fdetach.c -o $@

libc.a(fattach.o): $(OBJDIR)/fattach.o
$(OBJDIR)/fattach.o: ./src/stropts/fattach.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stropts/fattach.c -o $@

libc.a(getpmsg.o): $(OBJDIR)/getpmsg.o
$(OBJDIR)/getpmsg.o: ./src/stropts/getpmsg.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stropts/getpmsg.c -o $@

libc.a(isastream.o): $(OBJDIR)/isastream.o
$(OBJDIR)/isastream.o: ./src/stropts/isastream.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stropts/isastream.c -o $@

libc.a(utime.o): $(OBJDIR)/utime.o
$(OBJDIR)/utime.o: ./src/utime/utime.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/utime/utime.c -o $@

librt.a(sched_get_priority_min.o): $(OBJDIR)/sched_get_priority_min.o
$(OBJDIR)/sched_get_priority_min.o: ./src/sched/sched_get_priority_min.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/sched/sched_get_priority_min.c -o $@

librt.a(sched_rr_get_interval.o): $(OBJDIR)/sched_rr_get_interval.o
$(OBJDIR)/sched_rr_get_interval.o: ./src/sched/sched_rr_get_interval.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/sched/sched_rr_get_interval.c -o $@

librt.a(sched_yield.o): $(OBJDIR)/sched_yield.o
$(OBJDIR)/sched_yield.o: ./src/sched/sched_yield.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/sched/sched_yield.c -o $@

librt.a(sched_setparam.o): $(OBJDIR)/sched_setparam.o
$(OBJDIR)/sched_setparam.o: ./src/sched/sched_setparam.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/sched/sched_setparam.c -o $@

librt.a(sched_getscheduler.o): $(OBJDIR)/sched_getscheduler.o
$(OBJDIR)/sched_getscheduler.o: ./src/sched/sched_getscheduler.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/sched/sched_getscheduler.c -o $@

librt.a(sched_setscheduler.o): $(OBJDIR)/sched_setscheduler.o
$(OBJDIR)/sched_setscheduler.o: ./src/sched/sched_setscheduler.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/sched/sched_setscheduler.c -o $@

librt.a(sched_getparam.o): $(OBJDIR)/sched_getparam.o
$(OBJDIR)/sched_getparam.o: ./src/sched/sched_getparam.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/sched/sched_getparam.c -o $@

librt.a(sched_get_priority_max.o): $(OBJDIR)/sched_get_priority_max.o
$(OBJDIR)/sched_get_priority_max.o: ./src/sched/sched_get_priority_max.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/sched/sched_get_priority_max.c -o $@

libc.a(ulimit.o): $(OBJDIR)/ulimit.o
$(OBJDIR)/ulimit.o: ./src/ulimit/ulimit.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/ulimit/ulimit.c -o $@

libc.a(strfmon.o): $(OBJDIR)/strfmon.o
$(OBJDIR)/strfmon.o: ./src/monetary/strfmon.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/monetary/strfmon.c -o $@

libc.a(getpwuid.o): $(OBJDIR)/getpwuid.o
$(OBJDIR)/getpwuid.o: ./src/pwd/getpwuid.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/pwd/getpwuid.c -o $@

libc.a(setpwent.o): $(OBJDIR)/setpwent.o
$(OBJDIR)/setpwent.o: ./src/pwd/setpwent.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/pwd/setpwent.c -o $@

libc.a(getpwent.o): $(OBJDIR)/getpwent.o
$(OBJDIR)/getpwent.o: ./src/pwd/getpwent.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/pwd/getpwent.c -o $@

libc.a(getpwnam.o): $(OBJDIR)/getpwnam.o
$(OBJDIR)/getpwnam.o: ./src/pwd/getpwnam.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/pwd/getpwnam.c -o $@

libc.a(endpwent.o): $(OBJDIR)/endpwent.o
$(OBJDIR)/endpwent.o: ./src/pwd/endpwent.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/pwd/endpwent.c -o $@

libc.a(setutxent.o): $(OBJDIR)/setutxent.o
$(OBJDIR)/setutxent.o: ./src/utmpx/setutxent.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/utmpx/setutxent.c -o $@

libc.a(getutxid.o): $(OBJDIR)/getutxid.o
$(OBJDIR)/getutxid.o: ./src/utmpx/getutxid.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/utmpx/getutxid.c -o $@

libc.a(pututxline.o): $(OBJDIR)/pututxline.o
$(OBJDIR)/pututxline.o: ./src/utmpx/pututxline.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/utmpx/pututxline.c -o $@

libc.a(getutxent.o): $(OBJDIR)/getutxent.o
$(OBJDIR)/getutxent.o: ./src/utmpx/getutxent.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/utmpx/getutxent.c -o $@

libc.a(endutxent.o): $(OBJDIR)/endutxent.o
$(OBJDIR)/endutxent.o: ./src/utmpx/endutxent.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/utmpx/endutxent.c -o $@

libc.a(getutxline.o): $(OBJDIR)/getutxline.o
$(OBJDIR)/getutxline.o: ./src/utmpx/getutxline.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/utmpx/getutxline.c -o $@

libc.a(regerror.o): $(OBJDIR)/regerror.o
$(OBJDIR)/regerror.o: ./src/regex/regerror.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/regex/regerror.c -o $@

libc.a(regexec.o): $(OBJDIR)/regexec.o
$(OBJDIR)/regexec.o: ./src/regex/regexec.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/regex/regexec.c -o $@

libc.a(regfree.o): $(OBJDIR)/regfree.o
$(OBJDIR)/regfree.o: ./src/regex/regfree.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/regex/regfree.c -o $@

libc.a(regcomp.o): $(OBJDIR)/regcomp.o
$(OBJDIR)/regcomp.o: ./src/regex/regcomp.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/regex/regcomp.c -o $@

libcurses.a(newwin.o): $(OBJDIR)/newwin.o
$(OBJDIR)/newwin.o: ./src/curses/newwin.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/newwin.c -o $@

libcurses.a(prefresh.o): $(OBJDIR)/prefresh.o
$(OBJDIR)/prefresh.o: ./src/curses/prefresh.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/prefresh.c -o $@

libcurses.a(scr_set.o): $(OBJDIR)/scr_set.o
$(OBJDIR)/scr_set.o: ./src/curses/scr_set.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/scr_set.c -o $@

libcurses.a(vline.o): $(OBJDIR)/vline.o
$(OBJDIR)/vline.o: ./src/curses/vline.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/vline.c -o $@

libcurses.a(keypad.o): $(OBJDIR)/keypad.o
$(OBJDIR)/keypad.o: ./src/curses/keypad.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/keypad.c -o $@

libcurses.a(ins_nwstr.o): $(OBJDIR)/ins_nwstr.o
$(OBJDIR)/ins_nwstr.o: ./src/curses/ins_nwstr.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/ins_nwstr.c -o $@

libcurses.a(getbkgd.o): $(OBJDIR)/getbkgd.o
$(OBJDIR)/getbkgd.o: ./src/curses/getbkgd.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/getbkgd.c -o $@

libcurses.a(refresh.o): $(OBJDIR)/refresh.o
$(OBJDIR)/refresh.o: ./src/curses/refresh.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/refresh.c -o $@

libcurses.a(border_set.o): $(OBJDIR)/border_set.o
$(OBJDIR)/border_set.o: ./src/curses/border_set.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/border_set.c -o $@

libcurses.a(initscr.o): $(OBJDIR)/initscr.o
$(OBJDIR)/initscr.o: ./src/curses/initscr.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/initscr.c -o $@

libcurses.a(slk_attr_set.o): $(OBJDIR)/slk_attr_set.o
$(OBJDIR)/slk_attr_set.o: ./src/curses/slk_attr_set.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/slk_attr_set.c -o $@

libcurses.a(cbreak.o): $(OBJDIR)/cbreak.o
$(OBJDIR)/cbreak.o: ./src/curses/cbreak.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/cbreak.c -o $@

libcurses.a(clearok.o): $(OBJDIR)/clearok.o
$(OBJDIR)/clearok.o: ./src/curses/clearok.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/clearok.c -o $@

libcurses.a(mvwin.o): $(OBJDIR)/mvwin.o
$(OBJDIR)/mvwin.o: ./src/curses/mvwin.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/mvwin.c -o $@

libcurses.a(endwin.o): $(OBJDIR)/endwin.o
$(OBJDIR)/endwin.o: ./src/curses/endwin.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/endwin.c -o $@

libcurses.a(setcchar.o): $(OBJDIR)/setcchar.o
$(OBJDIR)/setcchar.o: ./src/curses/setcchar.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/setcchar.c -o $@

libcurses.a(is_wintouched.o): $(OBJDIR)/is_wintouched.o
$(OBJDIR)/is_wintouched.o: ./src/curses/is_wintouched.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/is_wintouched.c -o $@

libcurses.a(has_colors.o): $(OBJDIR)/has_colors.o
$(OBJDIR)/has_colors.o: ./src/curses/has_colors.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/has_colors.c -o $@

libcurses.a(subpad.o): $(OBJDIR)/subpad.o
$(OBJDIR)/subpad.o: ./src/curses/subpad.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/subpad.c -o $@

libcurses.a(LINES.o): $(OBJDIR)/LINES.o
$(OBJDIR)/LINES.o: ./src/curses/LINES.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/LINES.c -o $@

libcurses.a(slk_color.o): $(OBJDIR)/slk_color.o
$(OBJDIR)/slk_color.o: ./src/curses/slk_color.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/slk_color.c -o $@

libcurses.a(def_prog_mode.o): $(OBJDIR)/def_prog_mode.o
$(OBJDIR)/def_prog_mode.o: ./src/curses/def_prog_mode.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/def_prog_mode.c -o $@

libcurses.a(syncok.o): $(OBJDIR)/syncok.o
$(OBJDIR)/syncok.o: ./src/curses/syncok.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/syncok.c -o $@

libcurses.a(attr_off.o): $(OBJDIR)/attr_off.o
$(OBJDIR)/attr_off.o: ./src/curses/attr_off.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/attr_off.c -o $@

libcurses.a(touchwin.o): $(OBJDIR)/touchwin.o
$(OBJDIR)/touchwin.o: ./src/curses/touchwin.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/touchwin.c -o $@

libcurses.a(pecho_wchar.o): $(OBJDIR)/pecho_wchar.o
$(OBJDIR)/pecho_wchar.o: ./src/curses/pecho_wchar.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/pecho_wchar.c -o $@

libcurses.a(flushinp.o): $(OBJDIR)/flushinp.o
$(OBJDIR)/flushinp.o: ./src/curses/flushinp.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/flushinp.c -o $@

libcurses.a(start_color.o): $(OBJDIR)/start_color.o
$(OBJDIR)/start_color.o: ./src/curses/start_color.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/start_color.c -o $@

libcurses.a(echo_wchar.o): $(OBJDIR)/echo_wchar.o
$(OBJDIR)/echo_wchar.o: ./src/curses/echo_wchar.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/echo_wchar.c -o $@

libcurses.a(def_shell_mode.o): $(OBJDIR)/def_shell_mode.o
$(OBJDIR)/def_shell_mode.o: ./src/curses/def_shell_mode.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/def_shell_mode.c -o $@

libcurses.a(wsyncdown.o): $(OBJDIR)/wsyncdown.o
$(OBJDIR)/wsyncdown.o: ./src/curses/wsyncdown.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/wsyncdown.c -o $@

libcurses.a(dupwin.o): $(OBJDIR)/dupwin.o
$(OBJDIR)/dupwin.o: ./src/curses/dupwin.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/dupwin.c -o $@

libcurses.a(color_content.o): $(OBJDIR)/color_content.o
$(OBJDIR)/color_content.o: ./src/curses/color_content.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/color_content.c -o $@

libcurses.a(mvderwin.o): $(OBJDIR)/mvderwin.o
$(OBJDIR)/mvderwin.o: ./src/curses/mvderwin.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/mvderwin.c -o $@

libcurses.a(is_linetouched.o): $(OBJDIR)/is_linetouched.o
$(OBJDIR)/is_linetouched.o: ./src/curses/is_linetouched.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/is_linetouched.c -o $@

libcurses.a(nl.o): $(OBJDIR)/nl.o
$(OBJDIR)/nl.o: ./src/curses/nl.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/nl.c -o $@

libcurses.a(erasechar.o): $(OBJDIR)/erasechar.o
$(OBJDIR)/erasechar.o: ./src/curses/erasechar.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/erasechar.c -o $@

libcurses.a(getnstr.o): $(OBJDIR)/getnstr.o
$(OBJDIR)/getnstr.o: ./src/curses/getnstr.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/getnstr.c -o $@

libcurses.a(COLORS.o): $(OBJDIR)/COLORS.o
$(OBJDIR)/COLORS.o: ./src/curses/COLORS.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/COLORS.c -o $@

libcurses.a(can_change_color.o): $(OBJDIR)/can_change_color.o
$(OBJDIR)/can_change_color.o: ./src/curses/can_change_color.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/can_change_color.c -o $@

libcurses.a(vid_attr.o): $(OBJDIR)/vid_attr.o
$(OBJDIR)/vid_attr.o: ./src/curses/vid_attr.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/vid_attr.c -o $@

libcurses.a(wtouchln.o): $(OBJDIR)/wtouchln.o
$(OBJDIR)/wtouchln.o: ./src/curses/wtouchln.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/wtouchln.c -o $@

libcurses.a(nodelay.o): $(OBJDIR)/nodelay.o
$(OBJDIR)/nodelay.o: ./src/curses/nodelay.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/nodelay.c -o $@

libcurses.a(pechochar.o): $(OBJDIR)/pechochar.o
$(OBJDIR)/pechochar.o: ./src/curses/pechochar.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/pechochar.c -o $@

libcurses.a(echo.o): $(OBJDIR)/echo.o
$(OBJDIR)/echo.o: ./src/curses/echo.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/echo.c -o $@

libcurses.a(slk_init.o): $(OBJDIR)/slk_init.o
$(OBJDIR)/slk_init.o: ./src/curses/slk_init.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/slk_init.c -o $@

libcurses.a(curs_set.o): $(OBJDIR)/curs_set.o
$(OBJDIR)/curs_set.o: ./src/curses/curs_set.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/curs_set.c -o $@

libcurses.a(newpad.o): $(OBJDIR)/newpad.o
$(OBJDIR)/newpad.o: ./src/curses/newpad.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/newpad.c -o $@

libcurses.a(ins_wch.o): $(OBJDIR)/ins_wch.o
$(OBJDIR)/ins_wch.o: ./src/curses/ins_wch.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/ins_wch.c -o $@

libcurses.a(meta.o): $(OBJDIR)/meta.o
$(OBJDIR)/meta.o: ./src/curses/meta.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/meta.c -o $@

libcurses.a(nocbreak.o): $(OBJDIR)/nocbreak.o
$(OBJDIR)/nocbreak.o: ./src/curses/nocbreak.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/nocbreak.c -o $@

libcurses.a(clear.o): $(OBJDIR)/clear.o
$(OBJDIR)/clear.o: ./src/curses/clear.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/clear.c -o $@

libcurses.a(delwin.o): $(OBJDIR)/delwin.o
$(OBJDIR)/delwin.o: ./src/curses/delwin.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/delwin.c -o $@

libcurses.a(derwin.o): $(OBJDIR)/derwin.o
$(OBJDIR)/derwin.o: ./src/curses/derwin.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/derwin.c -o $@

libcurses.a(filter.o): $(OBJDIR)/filter.o
$(OBJDIR)/filter.o: ./src/curses/filter.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/filter.c -o $@

libcurses.a(inwstr.o): $(OBJDIR)/inwstr.o
$(OBJDIR)/inwstr.o: ./src/curses/inwstr.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/inwstr.c -o $@

libcurses.a(ins_wstr.o): $(OBJDIR)/ins_wstr.o
$(OBJDIR)/ins_wstr.o: ./src/curses/ins_wstr.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/ins_wstr.c -o $@

libcurses.a(vidputs.o): $(OBJDIR)/vidputs.o
$(OBJDIR)/vidputs.o: ./src/curses/vidputs.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/vidputs.c -o $@

libcurses.a(clrtobot.o): $(OBJDIR)/clrtobot.o
$(OBJDIR)/clrtobot.o: ./src/curses/clrtobot.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/clrtobot.c -o $@

libcurses.a(keyname.o): $(OBJDIR)/keyname.o
$(OBJDIR)/keyname.o: ./src/curses/keyname.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/keyname.c -o $@

libcurses.a(getwin.o): $(OBJDIR)/getwin.o
$(OBJDIR)/getwin.o: ./src/curses/getwin.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/getwin.c -o $@

libcurses.a(leaveok.o): $(OBJDIR)/leaveok.o
$(OBJDIR)/leaveok.o: ./src/curses/leaveok.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/leaveok.c -o $@

libcurses.a(flash.o): $(OBJDIR)/flash.o
$(OBJDIR)/flash.o: ./src/curses/flash.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/flash.c -o $@

libcurses.a(hline.o): $(OBJDIR)/hline.o
$(OBJDIR)/hline.o: ./src/curses/hline.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/hline.c -o $@

libcurses.a(subwin.o): $(OBJDIR)/subwin.o
$(OBJDIR)/subwin.o: ./src/curses/subwin.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/subwin.c -o $@

libcurses.a(vid_puts.o): $(OBJDIR)/vid_puts.o
$(OBJDIR)/vid_puts.o: ./src/curses/vid_puts.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/vid_puts.c -o $@

libcurses.a(getstr.o): $(OBJDIR)/getstr.o
$(OBJDIR)/getstr.o: ./src/curses/getstr.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/getstr.c -o $@

libcurses.a(delch.o): $(OBJDIR)/delch.o
$(OBJDIR)/delch.o: ./src/curses/delch.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/delch.c -o $@

libcurses.a(wunctrl.o): $(OBJDIR)/wunctrl.o
$(OBJDIR)/wunctrl.o: ./src/curses/wunctrl.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/wunctrl.c -o $@

libcurses.a(ungetch.o): $(OBJDIR)/ungetch.o
$(OBJDIR)/ungetch.o: ./src/curses/ungetch.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/ungetch.c -o $@

libcurses.a(innstr.o): $(OBJDIR)/innstr.o
$(OBJDIR)/innstr.o: ./src/curses/innstr.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/innstr.c -o $@

libcurses.a(copywin.o): $(OBJDIR)/copywin.o
$(OBJDIR)/copywin.o: ./src/curses/copywin.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/copywin.c -o $@

libcurses.a(in_wch.o): $(OBJDIR)/in_wch.o
$(OBJDIR)/in_wch.o: ./src/curses/in_wch.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/in_wch.c -o $@

libcurses.a(addstr.o): $(OBJDIR)/addstr.o
$(OBJDIR)/addstr.o: ./src/curses/addstr.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/addstr.c -o $@

libcurses.a(insertln.o): $(OBJDIR)/insertln.o
$(OBJDIR)/insertln.o: ./src/curses/insertln.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/insertln.c -o $@

libcurses.a(innwstr.o): $(OBJDIR)/innwstr.o
$(OBJDIR)/innwstr.o: ./src/curses/innwstr.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/innwstr.c -o $@

libcurses.a(init_color.o): $(OBJDIR)/init_color.o
$(OBJDIR)/init_color.o: ./src/curses/init_color.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/init_color.c -o $@

libcurses.a(instr.o): $(OBJDIR)/instr.o
$(OBJDIR)/instr.o: ./src/curses/instr.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/instr.c -o $@

libcurses.a(pnoutrefresh.o): $(OBJDIR)/pnoutrefresh.o
$(OBJDIR)/pnoutrefresh.o: ./src/curses/pnoutrefresh.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/pnoutrefresh.c -o $@

libcurses.a(vidattr.o): $(OBJDIR)/vidattr.o
$(OBJDIR)/vidattr.o: ./src/curses/vidattr.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/vidattr.c -o $@

libcurses.a(overwrite.o): $(OBJDIR)/overwrite.o
$(OBJDIR)/overwrite.o: ./src/curses/overwrite.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/overwrite.c -o $@

libcurses.a(touchline.o): $(OBJDIR)/touchline.o
$(OBJDIR)/touchline.o: ./src/curses/touchline.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/touchline.c -o $@

libcurses.a(COLOR_PAIRS.o): $(OBJDIR)/COLOR_PAIRS.o
$(OBJDIR)/COLOR_PAIRS.o: ./src/curses/COLOR_PAIRS.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/COLOR_PAIRS.c -o $@

libcurses.a(delay_output.o): $(OBJDIR)/delay_output.o
$(OBJDIR)/delay_output.o: ./src/curses/delay_output.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/delay_output.c -o $@

libcurses.a(inchstr.o): $(OBJDIR)/inchstr.o
$(OBJDIR)/inchstr.o: ./src/curses/inchstr.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/inchstr.c -o $@

libcurses.a(idcok.o): $(OBJDIR)/idcok.o
$(OBJDIR)/idcok.o: ./src/curses/idcok.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/idcok.c -o $@

libcurses.a(in_wchstr.o): $(OBJDIR)/in_wchstr.o
$(OBJDIR)/in_wchstr.o: ./src/curses/in_wchstr.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/in_wchstr.c -o $@

libcurses.a(notimeout.o): $(OBJDIR)/notimeout.o
$(OBJDIR)/notimeout.o: ./src/curses/notimeout.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/notimeout.c -o $@

libcurses.a(insch.o): $(OBJDIR)/insch.o
$(OBJDIR)/insch.o: ./src/curses/insch.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/insch.c -o $@

libcurses.a(getcchar.o): $(OBJDIR)/getcchar.o
$(OBJDIR)/getcchar.o: ./src/curses/getcchar.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/getcchar.c -o $@

libcurses.a(use_env.o): $(OBJDIR)/use_env.o
$(OBJDIR)/use_env.o: ./src/curses/use_env.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/use_env.c -o $@

libcurses.a(hline_set.o): $(OBJDIR)/hline_set.o
$(OBJDIR)/hline_set.o: ./src/curses/hline_set.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/hline_set.c -o $@

libcurses.a(addnwstr.o): $(OBJDIR)/addnwstr.o
$(OBJDIR)/addnwstr.o: ./src/curses/addnwstr.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/addnwstr.c -o $@

libcurses.a(longname.o): $(OBJDIR)/longname.o
$(OBJDIR)/longname.o: ./src/curses/longname.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/longname.c -o $@

libcurses.a(echochar.o): $(OBJDIR)/echochar.o
$(OBJDIR)/echochar.o: ./src/curses/echochar.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/echochar.c -o $@

libcurses.a(mvwprintw.o): $(OBJDIR)/mvwprintw.o
$(OBJDIR)/mvwprintw.o: ./src/curses/mvwprintw.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/mvwprintw.c -o $@

libcurses.a(slk_attroff.o): $(OBJDIR)/slk_attroff.o
$(OBJDIR)/slk_attroff.o: ./src/curses/slk_attroff.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/slk_attroff.c -o $@

libcurses.a(bkgrndset.o): $(OBJDIR)/bkgrndset.o
$(OBJDIR)/bkgrndset.o: ./src/curses/bkgrndset.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/bkgrndset.c -o $@

libcurses.a(wprintw.o): $(OBJDIR)/wprintw.o
$(OBJDIR)/wprintw.o: ./src/curses/wprintw.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/wprintw.c -o $@

libcurses.a(printw.o): $(OBJDIR)/printw.o
$(OBJDIR)/printw.o: ./src/curses/printw.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/printw.c -o $@

libcurses.a(qiflush.o): $(OBJDIR)/qiflush.o
$(OBJDIR)/qiflush.o: ./src/curses/qiflush.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/qiflush.c -o $@

libcurses.a(termattrs.o): $(OBJDIR)/termattrs.o
$(OBJDIR)/termattrs.o: ./src/curses/termattrs.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/termattrs.c -o $@

libcurses.a(slk_attrset.o): $(OBJDIR)/slk_attrset.o
$(OBJDIR)/slk_attrset.o: ./src/curses/slk_attrset.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/slk_attrset.c -o $@

libcurses.a(inchnstr.o): $(OBJDIR)/inchnstr.o
$(OBJDIR)/inchnstr.o: ./src/curses/inchnstr.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/inchnstr.c -o $@

libcurses.a(noecho.o): $(OBJDIR)/noecho.o
$(OBJDIR)/noecho.o: ./src/curses/noecho.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/noecho.c -o $@

libcurses.a(scanw.o): $(OBJDIR)/scanw.o
$(OBJDIR)/scanw.o: ./src/curses/scanw.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/scanw.c -o $@

libcurses.a(clrtoeol.o): $(OBJDIR)/clrtoeol.o
$(OBJDIR)/clrtoeol.o: ./src/curses/clrtoeol.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/clrtoeol.c -o $@

libcurses.a(mvcur.o): $(OBJDIR)/mvcur.o
$(OBJDIR)/mvcur.o: ./src/curses/mvcur.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/mvcur.c -o $@

libcurses.a(typeahead.o): $(OBJDIR)/typeahead.o
$(OBJDIR)/typeahead.o: ./src/curses/typeahead.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/typeahead.c -o $@

libcurses.a(attr_get.o): $(OBJDIR)/attr_get.o
$(OBJDIR)/attr_get.o: ./src/curses/attr_get.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/attr_get.c -o $@

libcurses.a(redrawwin.o): $(OBJDIR)/redrawwin.o
$(OBJDIR)/redrawwin.o: ./src/curses/redrawwin.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/redrawwin.c -o $@

libcurses.a(inch.o): $(OBJDIR)/inch.o
$(OBJDIR)/inch.o: ./src/curses/inch.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/inch.c -o $@

libcurses.a(mvwscanw.o): $(OBJDIR)/mvwscanw.o
$(OBJDIR)/mvwscanw.o: ./src/curses/mvwscanw.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/mvwscanw.c -o $@

libcurses.a(mvprintw.o): $(OBJDIR)/mvprintw.o
$(OBJDIR)/mvprintw.o: ./src/curses/mvprintw.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/mvprintw.c -o $@

libcurses.a(standout.o): $(OBJDIR)/standout.o
$(OBJDIR)/standout.o: ./src/curses/standout.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/standout.c -o $@

libcurses.a(wcursyncup.o): $(OBJDIR)/wcursyncup.o
$(OBJDIR)/wcursyncup.o: ./src/curses/wcursyncup.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/wcursyncup.c -o $@

libcurses.a(raw.o): $(OBJDIR)/raw.o
$(OBJDIR)/raw.o: ./src/curses/raw.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/raw.c -o $@

libcurses.a(insnstr.o): $(OBJDIR)/insnstr.o
$(OBJDIR)/insnstr.o: ./src/curses/insnstr.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/insnstr.c -o $@

libcurses.a(chgat.o): $(OBJDIR)/chgat.o
$(OBJDIR)/chgat.o: ./src/curses/chgat.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/chgat.c -o $@

libcurses.a(mvscanw.o): $(OBJDIR)/mvscanw.o
$(OBJDIR)/mvscanw.o: ./src/curses/mvscanw.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/mvscanw.c -o $@

libcurses.a(vw_printw.o): $(OBJDIR)/vw_printw.o
$(OBJDIR)/vw_printw.o: ./src/curses/vw_printw.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/vw_printw.c -o $@

libcurses.a(slk_set.o): $(OBJDIR)/slk_set.o
$(OBJDIR)/slk_set.o: ./src/curses/slk_set.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/slk_set.c -o $@

libcurses.a(stdscr.o): $(OBJDIR)/stdscr.o
$(OBJDIR)/stdscr.o: ./src/curses/stdscr.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/stdscr.c -o $@

libcurses.a(untouchwin.o): $(OBJDIR)/untouchwin.o
$(OBJDIR)/untouchwin.o: ./src/curses/untouchwin.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/untouchwin.c -o $@

libcurses.a(pair_content.o): $(OBJDIR)/pair_content.o
$(OBJDIR)/pair_content.o: ./src/curses/pair_content.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/pair_content.c -o $@

libcurses.a(wredrawln.o): $(OBJDIR)/wredrawln.o
$(OBJDIR)/wredrawln.o: ./src/curses/wredrawln.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/wredrawln.c -o $@

libcurses.a(get_wch.o): $(OBJDIR)/get_wch.o
$(OBJDIR)/get_wch.o: ./src/curses/get_wch.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/get_wch.c -o $@

libcurses.a(vline_set.o): $(OBJDIR)/vline_set.o
$(OBJDIR)/vline_set.o: ./src/curses/vline_set.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/vline_set.c -o $@

libcurses.a(wsyncup.o): $(OBJDIR)/wsyncup.o
$(OBJDIR)/wsyncup.o: ./src/curses/wsyncup.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/wsyncup.c -o $@

libcurses.a(unget_wch.o): $(OBJDIR)/unget_wch.o
$(OBJDIR)/unget_wch.o: ./src/curses/unget_wch.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/unget_wch.c -o $@

libcurses.a(in_wchnstr.o): $(OBJDIR)/in_wchnstr.o
$(OBJDIR)/in_wchnstr.o: ./src/curses/in_wchnstr.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/in_wchnstr.c -o $@

libcurses.a(isendwin.o): $(OBJDIR)/isendwin.o
$(OBJDIR)/isendwin.o: ./src/curses/isendwin.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/isendwin.c -o $@

libcurses.a(termname.o): $(OBJDIR)/termname.o
$(OBJDIR)/termname.o: ./src/curses/termname.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/termname.c -o $@

libcurses.a(setscrreg.o): $(OBJDIR)/setscrreg.o
$(OBJDIR)/setscrreg.o: ./src/curses/setscrreg.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/setscrreg.c -o $@

libcurses.a(getbkgrnd.o): $(OBJDIR)/getbkgrnd.o
$(OBJDIR)/getbkgrnd.o: ./src/curses/getbkgrnd.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/getbkgrnd.c -o $@

libcurses.a(standend.o): $(OBJDIR)/standend.o
$(OBJDIR)/standend.o: ./src/curses/standend.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/standend.c -o $@

libcurses.a(erase.o): $(OBJDIR)/erase.o
$(OBJDIR)/erase.o: ./src/curses/erase.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/erase.c -o $@

libcurses.a(term_attrs.o): $(OBJDIR)/term_attrs.o
$(OBJDIR)/term_attrs.o: ./src/curses/term_attrs.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/term_attrs.c -o $@

libcurses.a(scr_restore.o): $(OBJDIR)/scr_restore.o
$(OBJDIR)/scr_restore.o: ./src/curses/scr_restore.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/scr_restore.c -o $@

libcurses.a(slk_touch.o): $(OBJDIR)/slk_touch.o
$(OBJDIR)/slk_touch.o: ./src/curses/slk_touch.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/slk_touch.c -o $@

libcurses.a(halfdelay.o): $(OBJDIR)/halfdelay.o
$(OBJDIR)/halfdelay.o: ./src/curses/halfdelay.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/halfdelay.c -o $@

libcurses.a(wnoutrefresh.o): $(OBJDIR)/wnoutrefresh.o
$(OBJDIR)/wnoutrefresh.o: ./src/curses/wnoutrefresh.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/wnoutrefresh.c -o $@

libcurses.a(delscreen.o): $(OBJDIR)/delscreen.o
$(OBJDIR)/delscreen.o: ./src/curses/delscreen.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/delscreen.c -o $@

libcurses.a(box_set.o): $(OBJDIR)/box_set.o
$(OBJDIR)/box_set.o: ./src/curses/box_set.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/box_set.c -o $@

libcurses.a(idlok.o): $(OBJDIR)/idlok.o
$(OBJDIR)/idlok.o: ./src/curses/idlok.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/idlok.c -o $@

libcurses.a(wscanw.o): $(OBJDIR)/wscanw.o
$(OBJDIR)/wscanw.o: ./src/curses/wscanw.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/wscanw.c -o $@

libcurses.a(getch.o): $(OBJDIR)/getch.o
$(OBJDIR)/getch.o: ./src/curses/getch.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/getch.c -o $@

libcurses.a(bkgdset.o): $(OBJDIR)/bkgdset.o
$(OBJDIR)/bkgdset.o: ./src/curses/bkgdset.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/bkgdset.c -o $@

libcurses.a(slk_label.o): $(OBJDIR)/slk_label.o
$(OBJDIR)/slk_label.o: ./src/curses/slk_label.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/slk_label.c -o $@

libcurses.a(getn_wstr.o): $(OBJDIR)/getn_wstr.o
$(OBJDIR)/getn_wstr.o: ./src/curses/getn_wstr.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/getn_wstr.c -o $@

libcurses.a(set_term.o): $(OBJDIR)/set_term.o
$(OBJDIR)/set_term.o: ./src/curses/set_term.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/set_term.c -o $@

libcurses.a(putwin.o): $(OBJDIR)/putwin.o
$(OBJDIR)/putwin.o: ./src/curses/putwin.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/putwin.c -o $@

libcurses.a(attr_set.o): $(OBJDIR)/attr_set.o
$(OBJDIR)/attr_set.o: ./src/curses/attr_set.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/attr_set.c -o $@

libcurses.a(deleteln.o): $(OBJDIR)/deleteln.o
$(OBJDIR)/deleteln.o: ./src/curses/deleteln.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/deleteln.c -o $@

libcurses.a(savetty.o): $(OBJDIR)/savetty.o
$(OBJDIR)/savetty.o: ./src/curses/savetty.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/savetty.c -o $@

libcurses.a(add_wchnstr.o): $(OBJDIR)/add_wchnstr.o
$(OBJDIR)/add_wchnstr.o: ./src/curses/add_wchnstr.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/add_wchnstr.c -o $@

libcurses.a(has_il.o): $(OBJDIR)/has_il.o
$(OBJDIR)/has_il.o: ./src/curses/has_il.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/has_il.c -o $@

libcurses.a(slk_noutrefresh.o): $(OBJDIR)/slk_noutrefresh.o
$(OBJDIR)/slk_noutrefresh.o: ./src/curses/slk_noutrefresh.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/slk_noutrefresh.c -o $@

libcurses.a(reset_prog_mode.o): $(OBJDIR)/reset_prog_mode.o
$(OBJDIR)/reset_prog_mode.o: ./src/curses/reset_prog_mode.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/reset_prog_mode.c -o $@

libcurses.a(overlay.o): $(OBJDIR)/overlay.o
$(OBJDIR)/overlay.o: ./src/curses/overlay.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/overlay.c -o $@

libcurses.a(move.o): $(OBJDIR)/move.o
$(OBJDIR)/move.o: ./src/curses/move.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/move.c -o $@

libcurses.a(nonl.o): $(OBJDIR)/nonl.o
$(OBJDIR)/nonl.o: ./src/curses/nonl.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/nonl.c -o $@

libcurses.a(scrollok.o): $(OBJDIR)/scrollok.o
$(OBJDIR)/scrollok.o: ./src/curses/scrollok.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/scrollok.c -o $@

libcurses.a(baudrate.o): $(OBJDIR)/baudrate.o
$(OBJDIR)/baudrate.o: ./src/curses/baudrate.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/baudrate.c -o $@

libcurses.a(add_wchstr.o): $(OBJDIR)/add_wchstr.o
$(OBJDIR)/add_wchstr.o: ./src/curses/add_wchstr.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/add_wchstr.c -o $@

libcurses.a(slk_restore.o): $(OBJDIR)/slk_restore.o
$(OBJDIR)/slk_restore.o: ./src/curses/slk_restore.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/slk_restore.c -o $@

libcurses.a(ripoffline.o): $(OBJDIR)/ripoffline.o
$(OBJDIR)/ripoffline.o: ./src/curses/ripoffline.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/ripoffline.c -o $@

libcurses.a(addwstr.o): $(OBJDIR)/addwstr.o
$(OBJDIR)/addwstr.o: ./src/curses/addwstr.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/addwstr.c -o $@

libcurses.a(addnstr.o): $(OBJDIR)/addnstr.o
$(OBJDIR)/addnstr.o: ./src/curses/addnstr.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/addnstr.c -o $@

libcurses.a(newterm.o): $(OBJDIR)/newterm.o
$(OBJDIR)/newterm.o: ./src/curses/newterm.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/newterm.c -o $@

libcurses.a(slk_clear.o): $(OBJDIR)/slk_clear.o
$(OBJDIR)/slk_clear.o: ./src/curses/slk_clear.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/slk_clear.c -o $@

libcurses.a(beep.o): $(OBJDIR)/beep.o
$(OBJDIR)/beep.o: ./src/curses/beep.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/beep.c -o $@

libcurses.a(COLS.o): $(OBJDIR)/COLS.o
$(OBJDIR)/COLS.o: ./src/curses/COLS.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/COLS.c -o $@

libcurses.a(get_wstr.o): $(OBJDIR)/get_wstr.o
$(OBJDIR)/get_wstr.o: ./src/curses/get_wstr.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/get_wstr.c -o $@

libcurses.a(init_pair.o): $(OBJDIR)/init_pair.o
$(OBJDIR)/init_pair.o: ./src/curses/init_pair.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/init_pair.c -o $@

libcurses.a(immedok.o): $(OBJDIR)/immedok.o
$(OBJDIR)/immedok.o: ./src/curses/immedok.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/immedok.c -o $@

libcurses.a(slk_attr_on.o): $(OBJDIR)/slk_attr_on.o
$(OBJDIR)/slk_attr_on.o: ./src/curses/slk_attr_on.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/slk_attr_on.c -o $@

libcurses.a(slk_attr_off.o): $(OBJDIR)/slk_attr_off.o
$(OBJDIR)/slk_attr_off.o: ./src/curses/slk_attr_off.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/slk_attr_off.c -o $@

libcurses.a(curscr.o): $(OBJDIR)/curscr.o
$(OBJDIR)/curscr.o: ./src/curses/curscr.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/curscr.c -o $@

libcurses.a(key_name.o): $(OBJDIR)/key_name.o
$(OBJDIR)/key_name.o: ./src/curses/key_name.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/key_name.c -o $@

libcurses.a(scr_init.o): $(OBJDIR)/scr_init.o
$(OBJDIR)/scr_init.o: ./src/curses/scr_init.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/scr_init.c -o $@

libcurses.a(add_wch.o): $(OBJDIR)/add_wch.o
$(OBJDIR)/add_wch.o: ./src/curses/add_wch.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/add_wch.c -o $@

libcurses.a(addchnstr.o): $(OBJDIR)/addchnstr.o
$(OBJDIR)/addchnstr.o: ./src/curses/addchnstr.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/addchnstr.c -o $@

libcurses.a(bkgrnd.o): $(OBJDIR)/bkgrnd.o
$(OBJDIR)/bkgrnd.o: ./src/curses/bkgrnd.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/bkgrnd.c -o $@

libcurses.a(slk_refresh.o): $(OBJDIR)/slk_refresh.o
$(OBJDIR)/slk_refresh.o: ./src/curses/slk_refresh.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/slk_refresh.c -o $@

libcurses.a(reset_shell_mode.o): $(OBJDIR)/reset_shell_mode.o
$(OBJDIR)/reset_shell_mode.o: ./src/curses/reset_shell_mode.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/reset_shell_mode.c -o $@

libcurses.a(attrset.o): $(OBJDIR)/attrset.o
$(OBJDIR)/attrset.o: ./src/curses/attrset.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/attrset.c -o $@

libcurses.a(attr_on.o): $(OBJDIR)/attr_on.o
$(OBJDIR)/attr_on.o: ./src/curses/attr_on.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/attr_on.c -o $@

libcurses.a(scr_dump.o): $(OBJDIR)/scr_dump.o
$(OBJDIR)/scr_dump.o: ./src/curses/scr_dump.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/scr_dump.c -o $@

libcurses.a(noqiflush.o): $(OBJDIR)/noqiflush.o
$(OBJDIR)/noqiflush.o: ./src/curses/noqiflush.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/noqiflush.c -o $@

libcurses.a(slk_attron.o): $(OBJDIR)/slk_attron.o
$(OBJDIR)/slk_attron.o: ./src/curses/slk_attron.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/slk_attron.c -o $@

libcurses.a(box.o): $(OBJDIR)/box.o
$(OBJDIR)/box.o: ./src/curses/box.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/box.c -o $@

libcurses.a(attron.o): $(OBJDIR)/attron.o
$(OBJDIR)/attron.o: ./src/curses/attron.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/attron.c -o $@

libcurses.a(scrl.o): $(OBJDIR)/scrl.o
$(OBJDIR)/scrl.o: ./src/curses/scrl.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/scrl.c -o $@

libcurses.a(has_ic.o): $(OBJDIR)/has_ic.o
$(OBJDIR)/has_ic.o: ./src/curses/has_ic.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/has_ic.c -o $@

libcurses.a(bkgd.o): $(OBJDIR)/bkgd.o
$(OBJDIR)/bkgd.o: ./src/curses/bkgd.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/bkgd.c -o $@

libcurses.a(napms.o): $(OBJDIR)/napms.o
$(OBJDIR)/napms.o: ./src/curses/napms.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/napms.c -o $@

libcurses.a(attroff.o): $(OBJDIR)/attroff.o
$(OBJDIR)/attroff.o: ./src/curses/attroff.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/attroff.c -o $@

libcurses.a(resetty.o): $(OBJDIR)/resetty.o
$(OBJDIR)/resetty.o: ./src/curses/resetty.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/resetty.c -o $@

libcurses.a(color_set.o): $(OBJDIR)/color_set.o
$(OBJDIR)/color_set.o: ./src/curses/color_set.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/color_set.c -o $@

libcurses.a(erasewchar.o): $(OBJDIR)/erasewchar.o
$(OBJDIR)/erasewchar.o: ./src/curses/erasewchar.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/erasewchar.c -o $@

libcurses.a(doupdate.o): $(OBJDIR)/doupdate.o
$(OBJDIR)/doupdate.o: ./src/curses/doupdate.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/doupdate.c -o $@

libcurses.a(slk_wset.o): $(OBJDIR)/slk_wset.o
$(OBJDIR)/slk_wset.o: ./src/curses/slk_wset.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/slk_wset.c -o $@

libcurses.a(timeout.o): $(OBJDIR)/timeout.o
$(OBJDIR)/timeout.o: ./src/curses/timeout.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/timeout.c -o $@

libcurses.a(killwchar.o): $(OBJDIR)/killwchar.o
$(OBJDIR)/killwchar.o: ./src/curses/killwchar.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/killwchar.c -o $@

libcurses.a(border.o): $(OBJDIR)/border.o
$(OBJDIR)/border.o: ./src/curses/border.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/border.c -o $@

libcurses.a(intrflush.o): $(OBJDIR)/intrflush.o
$(OBJDIR)/intrflush.o: ./src/curses/intrflush.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/intrflush.c -o $@

libcurses.a(addch.o): $(OBJDIR)/addch.o
$(OBJDIR)/addch.o: ./src/curses/addch.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/addch.c -o $@

libcurses.a(insdelln.o): $(OBJDIR)/insdelln.o
$(OBJDIR)/insdelln.o: ./src/curses/insdelln.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/insdelln.c -o $@

libcurses.a(noraw.o): $(OBJDIR)/noraw.o
$(OBJDIR)/noraw.o: ./src/curses/noraw.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/noraw.c -o $@

libcurses.a(insstr.o): $(OBJDIR)/insstr.o
$(OBJDIR)/insstr.o: ./src/curses/insstr.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/insstr.c -o $@

libcurses.a(vw_scanw.o): $(OBJDIR)/vw_scanw.o
$(OBJDIR)/vw_scanw.o: ./src/curses/vw_scanw.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/vw_scanw.c -o $@

libcurses.a(addchstr.o): $(OBJDIR)/addchstr.o
$(OBJDIR)/addchstr.o: ./src/curses/addchstr.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/addchstr.c -o $@

libcurses.a(killchar.o): $(OBJDIR)/killchar.o
$(OBJDIR)/killchar.o: ./src/curses/killchar.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/curses/killchar.c -o $@

libc.a(wcswcs.o): $(OBJDIR)/wcswcs.o
$(OBJDIR)/wcswcs.o: ./src/wchar/wcswcs.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wchar/wcswcs.c -o $@

libc.a(wcstoul.o): $(OBJDIR)/wcstoul.o
$(OBJDIR)/wcstoul.o: ./src/wchar/wcstoul.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wchar/wcstoul.c -o $@

libc.a(wcsxfrm.o): $(OBJDIR)/wcsxfrm.o
$(OBJDIR)/wcsxfrm.o: ./src/wchar/wcsxfrm.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wchar/wcsxfrm.c -o $@

libc.a(wcscmp.o): $(OBJDIR)/wcscmp.o
$(OBJDIR)/wcscmp.o: ./src/wchar/wcscmp.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wchar/wcscmp.c -o $@

libc.a(wcstoll.o): $(OBJDIR)/wcstoll.o
$(OBJDIR)/wcstoll.o: ./src/wchar/wcstoll.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wchar/wcstoll.c -o $@

libc.a(wmemset.o): $(OBJDIR)/wmemset.o
$(OBJDIR)/wmemset.o: ./src/wchar/wmemset.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wchar/wmemset.c -o $@

libc.a(vfwprintf.o): $(OBJDIR)/vfwprintf.o
$(OBJDIR)/vfwprintf.o: ./src/wchar/vfwprintf.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wchar/vfwprintf.c -o $@

libc.a(vwprintf.o): $(OBJDIR)/vwprintf.o
$(OBJDIR)/vwprintf.o: ./src/wchar/vwprintf.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wchar/vwprintf.c -o $@

libc.a(wcsncat.o): $(OBJDIR)/wcsncat.o
$(OBJDIR)/wcsncat.o: ./src/wchar/wcsncat.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wchar/wcsncat.c -o $@

libc.a(wcstok.o): $(OBJDIR)/wcstok.o
$(OBJDIR)/wcstok.o: ./src/wchar/wcstok.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wchar/wcstok.c -o $@

libc.a(wcscoll.o): $(OBJDIR)/wcscoll.o
$(OBJDIR)/wcscoll.o: ./src/wchar/wcscoll.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wchar/wcscoll.c -o $@

libc.a(mbrlen.o): $(OBJDIR)/mbrlen.o
$(OBJDIR)/mbrlen.o: ./src/wchar/mbrlen.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wchar/mbrlen.c -o $@

libc.a(wscanf.o): $(OBJDIR)/wscanf.o
$(OBJDIR)/wscanf.o: ./src/wchar/wscanf.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wchar/wscanf.c -o $@

libc.a(wcscat.o): $(OBJDIR)/wcscat.o
$(OBJDIR)/wcscat.o: ./src/wchar/wcscat.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wchar/wcscat.c -o $@

libc.a(wcswidth.o): $(OBJDIR)/wcswidth.o
$(OBJDIR)/wcswidth.o: ./src/wchar/wcswidth.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wchar/wcswidth.c -o $@

libc.a(vwscanf.o): $(OBJDIR)/vwscanf.o
$(OBJDIR)/vwscanf.o: ./src/wchar/vwscanf.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wchar/vwscanf.c -o $@

libc.a(fwide.o): $(OBJDIR)/fwide.o
$(OBJDIR)/fwide.o: ./src/wchar/fwide.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wchar/fwide.c -o $@

libc.a(wcwidth.o): $(OBJDIR)/wcwidth.o
$(OBJDIR)/wcwidth.o: ./src/wchar/wcwidth.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wchar/wcwidth.c -o $@

libc.a(wprintf.o): $(OBJDIR)/wprintf.o
$(OBJDIR)/wprintf.o: ./src/wchar/wprintf.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wchar/wprintf.c -o $@

libc.a(fwscanf.o): $(OBJDIR)/fwscanf.o
$(OBJDIR)/fwscanf.o: ./src/wchar/fwscanf.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wchar/fwscanf.c -o $@

libc.a(putwchar.o): $(OBJDIR)/putwchar.o
$(OBJDIR)/putwchar.o: ./src/wchar/putwchar.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wchar/putwchar.c -o $@

libc.a(wcstol.o): $(OBJDIR)/wcstol.o
$(OBJDIR)/wcstol.o: ./src/wchar/wcstol.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wchar/wcstol.c -o $@

libc.a(wcscpy.o): $(OBJDIR)/wcscpy.o
$(OBJDIR)/wcscpy.o: ./src/wchar/wcscpy.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wchar/wcscpy.c -o $@

libc.a(wcsspn.o): $(OBJDIR)/wcsspn.o
$(OBJDIR)/wcsspn.o: ./src/wchar/wcsspn.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wchar/wcsspn.c -o $@

libc.a(wcschr.o): $(OBJDIR)/wcschr.o
$(OBJDIR)/wcschr.o: ./src/wchar/wcschr.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wchar/wcschr.c -o $@

libc.a(wmemcmp.o): $(OBJDIR)/wmemcmp.o
$(OBJDIR)/wmemcmp.o: ./src/wchar/wmemcmp.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wchar/wmemcmp.c -o $@

libc.a(getwchar.o): $(OBJDIR)/getwchar.o
$(OBJDIR)/getwchar.o: ./src/wchar/getwchar.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wchar/getwchar.c -o $@

libc.a(wcsrtombs.o): $(OBJDIR)/wcsrtombs.o
$(OBJDIR)/wcsrtombs.o: ./src/wchar/wcsrtombs.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wchar/wcsrtombs.c -o $@

libc.a(wcscspn.o): $(OBJDIR)/wcscspn.o
$(OBJDIR)/wcscspn.o: ./src/wchar/wcscspn.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wchar/wcscspn.c -o $@

libc.a(mbsrtowcs.o): $(OBJDIR)/mbsrtowcs.o
$(OBJDIR)/mbsrtowcs.o: ./src/wchar/mbsrtowcs.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wchar/mbsrtowcs.c -o $@

libc.a(vfwscanf.o): $(OBJDIR)/vfwscanf.o
$(OBJDIR)/vfwscanf.o: ./src/wchar/vfwscanf.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wchar/vfwscanf.c -o $@

libc.a(btowc.o): $(OBJDIR)/btowc.o
$(OBJDIR)/btowc.o: ./src/wchar/btowc.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wchar/btowc.c -o $@

libc.a(putwc.o): $(OBJDIR)/putwc.o
$(OBJDIR)/putwc.o: ./src/wchar/putwc.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wchar/putwc.c -o $@

libc.a(ungetwc.o): $(OBJDIR)/ungetwc.o
$(OBJDIR)/ungetwc.o: ./src/wchar/ungetwc.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wchar/ungetwc.c -o $@

libc.a(wcrtomb.o): $(OBJDIR)/wcrtomb.o
$(OBJDIR)/wcrtomb.o: ./src/wchar/wcrtomb.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wchar/wcrtomb.c -o $@

libc.a(mbrtowc.o): $(OBJDIR)/mbrtowc.o
$(OBJDIR)/mbrtowc.o: ./src/wchar/mbrtowc.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wchar/mbrtowc.c -o $@

libc.a(fgetwc.o): $(OBJDIR)/fgetwc.o
$(OBJDIR)/fgetwc.o: ./src/wchar/fgetwc.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wchar/fgetwc.c -o $@

libc.a(wcslen.o): $(OBJDIR)/wcslen.o
$(OBJDIR)/wcslen.o: ./src/wchar/wcslen.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wchar/wcslen.c -o $@

libc.a(wcstoull.o): $(OBJDIR)/wcstoull.o
$(OBJDIR)/wcstoull.o: ./src/wchar/wcstoull.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wchar/wcstoull.c -o $@

libc.a(wctob.o): $(OBJDIR)/wctob.o
$(OBJDIR)/wctob.o: ./src/wchar/wctob.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wchar/wctob.c -o $@

libc.a(wcstof.o): $(OBJDIR)/wcstof.o
$(OBJDIR)/wcstof.o: ./src/wchar/wcstof.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wchar/wcstof.c -o $@

libc.a(wmemcpy.o): $(OBJDIR)/wmemcpy.o
$(OBJDIR)/wmemcpy.o: ./src/wchar/wmemcpy.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wchar/wmemcpy.c -o $@

libc.a(wmemchr.o): $(OBJDIR)/wmemchr.o
$(OBJDIR)/wmemchr.o: ./src/wchar/wmemchr.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wchar/wmemchr.c -o $@

libc.a(wcsncmp.o): $(OBJDIR)/wcsncmp.o
$(OBJDIR)/wcsncmp.o: ./src/wchar/wcsncmp.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wchar/wcsncmp.c -o $@

libc.a(wcsstr.o): $(OBJDIR)/wcsstr.o
$(OBJDIR)/wcsstr.o: ./src/wchar/wcsstr.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wchar/wcsstr.c -o $@

libc.a(wcstold.o): $(OBJDIR)/wcstold.o
$(OBJDIR)/wcstold.o: ./src/wchar/wcstold.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wchar/wcstold.c -o $@

libc.a(vswprintf.o): $(OBJDIR)/vswprintf.o
$(OBJDIR)/vswprintf.o: ./src/wchar/vswprintf.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wchar/vswprintf.c -o $@

libc.a(fputwc.o): $(OBJDIR)/fputwc.o
$(OBJDIR)/fputwc.o: ./src/wchar/fputwc.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wchar/fputwc.c -o $@

libc.a(getwc.o): $(OBJDIR)/getwc.o
$(OBJDIR)/getwc.o: ./src/wchar/getwc.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wchar/getwc.c -o $@

libc.a(mbsinit.o): $(OBJDIR)/mbsinit.o
$(OBJDIR)/mbsinit.o: ./src/wchar/mbsinit.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wchar/mbsinit.c -o $@

libc.a(wcstod.o): $(OBJDIR)/wcstod.o
$(OBJDIR)/wcstod.o: ./src/wchar/wcstod.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wchar/wcstod.c -o $@

libc.a(fwprintf.o): $(OBJDIR)/fwprintf.o
$(OBJDIR)/fwprintf.o: ./src/wchar/fwprintf.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wchar/fwprintf.c -o $@

libc.a(fgetws.o): $(OBJDIR)/fgetws.o
$(OBJDIR)/fgetws.o: ./src/wchar/fgetws.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wchar/fgetws.c -o $@

libc.a(wmemmove.o): $(OBJDIR)/wmemmove.o
$(OBJDIR)/wmemmove.o: ./src/wchar/wmemmove.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wchar/wmemmove.c -o $@

libc.a(swscanf.o): $(OBJDIR)/swscanf.o
$(OBJDIR)/swscanf.o: ./src/wchar/swscanf.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wchar/swscanf.c -o $@

libc.a(wcsftime.o): $(OBJDIR)/wcsftime.o
$(OBJDIR)/wcsftime.o: ./src/wchar/wcsftime.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wchar/wcsftime.c -o $@

libc.a(wcsncpy.o): $(OBJDIR)/wcsncpy.o
$(OBJDIR)/wcsncpy.o: ./src/wchar/wcsncpy.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wchar/wcsncpy.c -o $@

libc.a(vswscanf.o): $(OBJDIR)/vswscanf.o
$(OBJDIR)/vswscanf.o: ./src/wchar/vswscanf.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wchar/vswscanf.c -o $@

libc.a(fputws.o): $(OBJDIR)/fputws.o
$(OBJDIR)/fputws.o: ./src/wchar/fputws.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wchar/fputws.c -o $@

libc.a(wcspbrk.o): $(OBJDIR)/wcspbrk.o
$(OBJDIR)/wcspbrk.o: ./src/wchar/wcspbrk.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wchar/wcspbrk.c -o $@

libc.a(swprintf.o): $(OBJDIR)/swprintf.o
$(OBJDIR)/swprintf.o: ./src/wchar/swprintf.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wchar/swprintf.c -o $@

libc.a(wcsrchr.o): $(OBJDIR)/wcsrchr.o
$(OBJDIR)/wcsrchr.o: ./src/wchar/wcsrchr.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wchar/wcsrchr.c -o $@

libc.a(setlogmask.o): $(OBJDIR)/setlogmask.o
$(OBJDIR)/setlogmask.o: ./src/syslog/setlogmask.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/syslog/setlogmask.c -o $@

libc.a(openlog.o): $(OBJDIR)/openlog.o
$(OBJDIR)/openlog.o: ./src/syslog/openlog.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/syslog/openlog.c -o $@

libc.a(closelog.o): $(OBJDIR)/closelog.o
$(OBJDIR)/closelog.o: ./src/syslog/closelog.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/syslog/closelog.c -o $@

libc.a(syslog.o): $(OBJDIR)/syslog.o
$(OBJDIR)/syslog.o: ./src/syslog/syslog.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/syslog/syslog.c -o $@

libc.a(setlocale.o): $(OBJDIR)/setlocale.o
$(OBJDIR)/setlocale.o: ./src/locale/setlocale.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/locale/setlocale.c -o $@

libc.a(localeconv.o): $(OBJDIR)/localeconv.o
$(OBJDIR)/localeconv.o: ./src/locale/localeconv.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/locale/localeconv.c -o $@

libc.a(fscanf.o): $(OBJDIR)/fscanf.o
$(OBJDIR)/fscanf.o: ./src/stdio/fscanf.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdio/fscanf.c -o $@

libc.a(puts.o): $(OBJDIR)/puts.o
$(OBJDIR)/puts.o: ./src/stdio/puts.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdio/puts.c -o $@

libc.a(gets.o): $(OBJDIR)/gets.o
$(OBJDIR)/gets.o: ./src/stdio/gets.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdio/gets.c -o $@

libc.a(fwrite.o): $(OBJDIR)/fwrite.o
$(OBJDIR)/fwrite.o: ./src/stdio/fwrite.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdio/fwrite.c -o $@

libc.a(ungetc.o): $(OBJDIR)/ungetc.o
$(OBJDIR)/ungetc.o: ./src/stdio/ungetc.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdio/ungetc.c -o $@

libc.a(fclose.o): $(OBJDIR)/fclose.o
$(OBJDIR)/fclose.o: ./src/stdio/fclose.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdio/fclose.c -o $@

libc.a(printf.o): $(OBJDIR)/printf.o
$(OBJDIR)/printf.o: ./src/stdio/printf.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdio/printf.c -o $@

libc.a(clearerr.o): $(OBJDIR)/clearerr.o
$(OBJDIR)/clearerr.o: ./src/stdio/clearerr.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdio/clearerr.c -o $@

libc.a(vsscanf.o): $(OBJDIR)/vsscanf.o
$(OBJDIR)/vsscanf.o: ./src/stdio/vsscanf.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdio/vsscanf.c -o $@

libc.a(putw.o): $(OBJDIR)/putw.o
$(OBJDIR)/putw.o: ./src/stdio/putw.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdio/putw.c -o $@

libc.a(tmpfile.o): $(OBJDIR)/tmpfile.o
$(OBJDIR)/tmpfile.o: ./src/stdio/tmpfile.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdio/tmpfile.c -o $@

libc.a(fgetpos.o): $(OBJDIR)/fgetpos.o
$(OBJDIR)/fgetpos.o: ./src/stdio/fgetpos.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdio/fgetpos.c -o $@

libc.a(fseek.o): $(OBJDIR)/fseek.o
$(OBJDIR)/fseek.o: ./src/stdio/fseek.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdio/fseek.c -o $@

libc.a(fileno.o): $(OBJDIR)/fileno.o
$(OBJDIR)/fileno.o: ./src/stdio/fileno.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdio/fileno.c -o $@

libc.a(vsnprintf.o): $(OBJDIR)/vsnprintf.o
$(OBJDIR)/vsnprintf.o: ./src/stdio/vsnprintf.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdio/vsnprintf.c -o $@

libc.a(getchar.o): $(OBJDIR)/getchar.o
$(OBJDIR)/getchar.o: ./src/stdio/getchar.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdio/getchar.c -o $@

libc.a(tmpnam.o): $(OBJDIR)/tmpnam.o
$(OBJDIR)/tmpnam.o: ./src/stdio/tmpnam.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdio/tmpnam.c -o $@

libc.a(vscanf.o): $(OBJDIR)/vscanf.o
$(OBJDIR)/vscanf.o: ./src/stdio/vscanf.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdio/vscanf.c -o $@

libc.a(vfscanf.o): $(OBJDIR)/vfscanf.o
$(OBJDIR)/vfscanf.o: ./src/stdio/vfscanf.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdio/vfscanf.c -o $@

libc.a(__stderr.o): $(OBJDIR)/__stderr.o
$(OBJDIR)/__stderr.o: ./src/stdio/__stderr.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdio/__stderr.c -o $@

libc.a(vprintf.o): $(OBJDIR)/vprintf.o
$(OBJDIR)/vprintf.o: ./src/stdio/vprintf.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdio/vprintf.c -o $@

libc.a(fputs.o): $(OBJDIR)/fputs.o
$(OBJDIR)/fputs.o: ./src/stdio/fputs.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdio/fputs.c -o $@

libc.a(vfprintf.o): $(OBJDIR)/vfprintf.o
$(OBJDIR)/vfprintf.o: ./src/stdio/vfprintf.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdio/vfprintf.c -o $@

libc.a(ftell.o): $(OBJDIR)/ftell.o
$(OBJDIR)/ftell.o: ./src/stdio/ftell.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdio/ftell.c -o $@

libc.a(__stdout.o): $(OBJDIR)/__stdout.o
$(OBJDIR)/__stdout.o: ./src/stdio/__stdout.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdio/__stdout.c -o $@

libc.a(fflush.o): $(OBJDIR)/fflush.o
$(OBJDIR)/fflush.o: ./src/stdio/fflush.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdio/fflush.c -o $@

libc.a(setbuf.o): $(OBJDIR)/setbuf.o
$(OBJDIR)/setbuf.o: ./src/stdio/setbuf.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdio/setbuf.c -o $@

libc.a(rewind.o): $(OBJDIR)/rewind.o
$(OBJDIR)/rewind.o: ./src/stdio/rewind.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdio/rewind.c -o $@

libc.a(ferror.o): $(OBJDIR)/ferror.o
$(OBJDIR)/ferror.o: ./src/stdio/ferror.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdio/ferror.c -o $@

libc.a(rename.o): $(OBJDIR)/rename.o
$(OBJDIR)/rename.o: ./src/stdio/rename.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdio/rename.c -o $@

libc.a(fputc.o): $(OBJDIR)/fputc.o
$(OBJDIR)/fputc.o: ./src/stdio/fputc.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdio/fputc.c -o $@

libc.a(getw.o): $(OBJDIR)/getw.o
$(OBJDIR)/getw.o: ./src/stdio/getw.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdio/getw.c -o $@

libc.a(fdopen.o): $(OBJDIR)/fdopen.o
$(OBJDIR)/fdopen.o: ./src/stdio/fdopen.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdio/fdopen.c -o $@

libc.a(vsprintf.o): $(OBJDIR)/vsprintf.o
$(OBJDIR)/vsprintf.o: ./src/stdio/vsprintf.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdio/vsprintf.c -o $@

libc.a(fread.o): $(OBJDIR)/fread.o
$(OBJDIR)/fread.o: ./src/stdio/fread.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdio/fread.c -o $@

libc.a(setvbuf.o): $(OBJDIR)/setvbuf.o
$(OBJDIR)/setvbuf.o: ./src/stdio/setvbuf.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdio/setvbuf.c -o $@

libc.a(tempnam.o): $(OBJDIR)/tempnam.o
$(OBJDIR)/tempnam.o: ./src/stdio/tempnam.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdio/tempnam.c -o $@

libc.a(popen.o): $(OBJDIR)/popen.o
$(OBJDIR)/popen.o: ./src/stdio/popen.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdio/popen.c -o $@

libc.a(feof.o): $(OBJDIR)/feof.o
$(OBJDIR)/feof.o: ./src/stdio/feof.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdio/feof.c -o $@

libc.a(fsetpos.o): $(OBJDIR)/fsetpos.o
$(OBJDIR)/fsetpos.o: ./src/stdio/fsetpos.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdio/fsetpos.c -o $@

libc.a(fprintf.o): $(OBJDIR)/fprintf.o
$(OBJDIR)/fprintf.o: ./src/stdio/fprintf.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdio/fprintf.c -o $@

libc.a(fgetc.o): $(OBJDIR)/fgetc.o
$(OBJDIR)/fgetc.o: ./src/stdio/fgetc.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdio/fgetc.c -o $@

libc.a(__stdin.o): $(OBJDIR)/__stdin.o
$(OBJDIR)/__stdin.o: ./src/stdio/__stdin.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdio/__stdin.c -o $@

libc.a(freopen.o): $(OBJDIR)/freopen.o
$(OBJDIR)/freopen.o: ./src/stdio/freopen.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdio/freopen.c -o $@

libc.a(sprintf.o): $(OBJDIR)/sprintf.o
$(OBJDIR)/sprintf.o: ./src/stdio/sprintf.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdio/sprintf.c -o $@

libc.a(remove.o): $(OBJDIR)/remove.o
$(OBJDIR)/remove.o: ./src/stdio/remove.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdio/remove.c -o $@

libc.a(putc.o): $(OBJDIR)/putc.o
$(OBJDIR)/putc.o: ./src/stdio/putc.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdio/putc.c -o $@

libc.a(fopen.o): $(OBJDIR)/fopen.o
$(OBJDIR)/fopen.o: ./src/stdio/fopen.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdio/fopen.c -o $@

libc.a(putchar.o): $(OBJDIR)/putchar.o
$(OBJDIR)/putchar.o: ./src/stdio/putchar.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdio/putchar.c -o $@

libc.a(scanf.o): $(OBJDIR)/scanf.o
$(OBJDIR)/scanf.o: ./src/stdio/scanf.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdio/scanf.c -o $@

libc.a(sscanf.o): $(OBJDIR)/sscanf.o
$(OBJDIR)/sscanf.o: ./src/stdio/sscanf.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdio/sscanf.c -o $@

libc.a(fgets.o): $(OBJDIR)/fgets.o
$(OBJDIR)/fgets.o: ./src/stdio/fgets.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdio/fgets.c -o $@

libc.a(snprintf.o): $(OBJDIR)/snprintf.o
$(OBJDIR)/snprintf.o: ./src/stdio/snprintf.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdio/snprintf.c -o $@

libc.a(getc.o): $(OBJDIR)/getc.o
$(OBJDIR)/getc.o: ./src/stdio/getc.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdio/getc.c -o $@

libc.a(perror.o): $(OBJDIR)/perror.o
$(OBJDIR)/perror.o: ./src/stdio/perror.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdio/perror.c -o $@

libc.a(pclose.o): $(OBJDIR)/pclose.o
$(OBJDIR)/pclose.o: ./src/stdio/pclose.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdio/pclose.c -o $@

libc.a(nl_langinfo.o): $(OBJDIR)/nl_langinfo.o
$(OBJDIR)/nl_langinfo.o: ./src/langinfo/nl_langinfo.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/langinfo/nl_langinfo.c -o $@

libc.a(dbm_store.o): $(OBJDIR)/dbm_store.o
$(OBJDIR)/dbm_store.o: ./src/ndbm/dbm_store.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/ndbm/dbm_store.c -o $@

libc.a(dbm_close.o): $(OBJDIR)/dbm_close.o
$(OBJDIR)/dbm_close.o: ./src/ndbm/dbm_close.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/ndbm/dbm_close.c -o $@

libc.a(dbm_error.o): $(OBJDIR)/dbm_error.o
$(OBJDIR)/dbm_error.o: ./src/ndbm/dbm_error.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/ndbm/dbm_error.c -o $@

libc.a(dbm_firstkey.o): $(OBJDIR)/dbm_firstkey.o
$(OBJDIR)/dbm_firstkey.o: ./src/ndbm/dbm_firstkey.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/ndbm/dbm_firstkey.c -o $@

libc.a(dbm_fetch.o): $(OBJDIR)/dbm_fetch.o
$(OBJDIR)/dbm_fetch.o: ./src/ndbm/dbm_fetch.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/ndbm/dbm_fetch.c -o $@

libc.a(dbm_open.o): $(OBJDIR)/dbm_open.o
$(OBJDIR)/dbm_open.o: ./src/ndbm/dbm_open.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/ndbm/dbm_open.c -o $@

libc.a(dbm_clearerr.o): $(OBJDIR)/dbm_clearerr.o
$(OBJDIR)/dbm_clearerr.o: ./src/ndbm/dbm_clearerr.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/ndbm/dbm_clearerr.c -o $@

libc.a(dbm_nextkey.o): $(OBJDIR)/dbm_nextkey.o
$(OBJDIR)/dbm_nextkey.o: ./src/ndbm/dbm_nextkey.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/ndbm/dbm_nextkey.c -o $@

libc.a(dbm_delete.o): $(OBJDIR)/dbm_delete.o
$(OBJDIR)/dbm_delete.o: ./src/ndbm/dbm_delete.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/ndbm/dbm_delete.c -o $@

libc.a(isspace.o): $(OBJDIR)/isspace.o
$(OBJDIR)/isspace.o: ./src/ctype/isspace.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/ctype/isspace.c -o $@

libc.a(isascii.o): $(OBJDIR)/isascii.o
$(OBJDIR)/isascii.o: ./src/ctype/isascii.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/ctype/isascii.c -o $@

libc.a(iscntrl.o): $(OBJDIR)/iscntrl.o
$(OBJDIR)/iscntrl.o: ./src/ctype/iscntrl.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/ctype/iscntrl.c -o $@

libc.a(isdigit.o): $(OBJDIR)/isdigit.o
$(OBJDIR)/isdigit.o: ./src/ctype/isdigit.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/ctype/isdigit.c -o $@

libc.a(isalnum.o): $(OBJDIR)/isalnum.o
$(OBJDIR)/isalnum.o: ./src/ctype/isalnum.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/ctype/isalnum.c -o $@

libc.a(islower.o): $(OBJDIR)/islower.o
$(OBJDIR)/islower.o: ./src/ctype/islower.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/ctype/islower.c -o $@

libc.a(tolower.o): $(OBJDIR)/tolower.o
$(OBJDIR)/tolower.o: ./src/ctype/tolower.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/ctype/tolower.c -o $@

libc.a(ispunct.o): $(OBJDIR)/ispunct.o
$(OBJDIR)/ispunct.o: ./src/ctype/ispunct.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/ctype/ispunct.c -o $@

libc.a(toupper.o): $(OBJDIR)/toupper.o
$(OBJDIR)/toupper.o: ./src/ctype/toupper.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/ctype/toupper.c -o $@

libc.a(isalpha.o): $(OBJDIR)/isalpha.o
$(OBJDIR)/isalpha.o: ./src/ctype/isalpha.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/ctype/isalpha.c -o $@

libc.a(isblank.o): $(OBJDIR)/isblank.o
$(OBJDIR)/isblank.o: ./src/ctype/isblank.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/ctype/isblank.c -o $@

libc.a(isprint.o): $(OBJDIR)/isprint.o
$(OBJDIR)/isprint.o: ./src/ctype/isprint.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/ctype/isprint.c -o $@

libc.a(isupper.o): $(OBJDIR)/isupper.o
$(OBJDIR)/isupper.o: ./src/ctype/isupper.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/ctype/isupper.c -o $@

libc.a(isxdigit.o): $(OBJDIR)/isxdigit.o
$(OBJDIR)/isxdigit.o: ./src/ctype/isxdigit.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/ctype/isxdigit.c -o $@

libc.a(isgraph.o): $(OBJDIR)/isgraph.o
$(OBJDIR)/isgraph.o: ./src/ctype/isgraph.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/ctype/isgraph.c -o $@

libc.a(toascii.o): $(OBJDIR)/toascii.o
$(OBJDIR)/toascii.o: ./src/ctype/toascii.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/ctype/toascii.c -o $@

libc.a(swapcontext.o): $(OBJDIR)/swapcontext.o
$(OBJDIR)/swapcontext.o: ./src/ucontext/swapcontext.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/ucontext/swapcontext.c -o $@

libc.a(getcontext.o): $(OBJDIR)/getcontext.o
$(OBJDIR)/getcontext.o: ./src/ucontext/getcontext.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/ucontext/getcontext.c -o $@

libc.a(makecontext.o): $(OBJDIR)/makecontext.o
$(OBJDIR)/makecontext.o: ./src/ucontext/makecontext.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/ucontext/makecontext.c -o $@

libc.a(setcontext.o): $(OBJDIR)/setcontext.o
$(OBJDIR)/setcontext.o: ./src/ucontext/setcontext.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/ucontext/setcontext.c -o $@

librt.a(mq_setattr.o): $(OBJDIR)/mq_setattr.o
$(OBJDIR)/mq_setattr.o: ./src/mqueue/mq_setattr.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/mqueue/mq_setattr.c -o $@

librt.a(mq_close.o): $(OBJDIR)/mq_close.o
$(OBJDIR)/mq_close.o: ./src/mqueue/mq_close.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/mqueue/mq_close.c -o $@

librt.a(mq_receive.o): $(OBJDIR)/mq_receive.o
$(OBJDIR)/mq_receive.o: ./src/mqueue/mq_receive.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/mqueue/mq_receive.c -o $@

librt.a(mq_unlink.o): $(OBJDIR)/mq_unlink.o
$(OBJDIR)/mq_unlink.o: ./src/mqueue/mq_unlink.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/mqueue/mq_unlink.c -o $@

librt.a(mq_open.o): $(OBJDIR)/mq_open.o
$(OBJDIR)/mq_open.o: ./src/mqueue/mq_open.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/mqueue/mq_open.c -o $@

librt.a(mq_getattr.o): $(OBJDIR)/mq_getattr.o
$(OBJDIR)/mq_getattr.o: ./src/mqueue/mq_getattr.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/mqueue/mq_getattr.c -o $@

librt.a(mq_notify.o): $(OBJDIR)/mq_notify.o
$(OBJDIR)/mq_notify.o: ./src/mqueue/mq_notify.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/mqueue/mq_notify.c -o $@

librt.a(mq_send.o): $(OBJDIR)/mq_send.o
$(OBJDIR)/mq_send.o: ./src/mqueue/mq_send.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/mqueue/mq_send.c -o $@

libc.a(environ.o): $(OBJDIR)/environ.o
$(OBJDIR)/environ.o: ./src/environ.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/environ.c -o $@

libc.a(globfree.o): $(OBJDIR)/globfree.o
$(OBJDIR)/globfree.o: ./src/glob/globfree.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/glob/globfree.c -o $@

libc.a(glob.o): $(OBJDIR)/glob.o
$(OBJDIR)/glob.o: ./src/glob/glob.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/glob/glob.c -o $@

libc.a(wait3.o): $(OBJDIR)/wait3.o
$(OBJDIR)/wait3.o: ./src/sys/wait/wait3.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/sys/wait/wait3.c -o $@

libc.a(wait.o): $(OBJDIR)/wait.o
$(OBJDIR)/wait.o: ./src/sys/wait/wait.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/sys/wait/wait.c -o $@

libc.a(waitid.o): $(OBJDIR)/waitid.o
$(OBJDIR)/waitid.o: ./src/sys/wait/waitid.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/sys/wait/waitid.c -o $@

libc.a(waitpid.o): $(OBJDIR)/waitpid.o
$(OBJDIR)/waitpid.o: ./src/sys/wait/waitpid.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/sys/wait/waitpid.c -o $@

libc.a(ftok.o): $(OBJDIR)/ftok.o
$(OBJDIR)/ftok.o: ./src/sys/ipc/ftok.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/sys/ipc/ftok.c -o $@

libc.a(writev.o): $(OBJDIR)/writev.o
$(OBJDIR)/writev.o: ./src/sys/uio/writev.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/sys/uio/writev.c -o $@

libc.a(readv.o): $(OBJDIR)/readv.o
$(OBJDIR)/readv.o: ./src/sys/uio/readv.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/sys/uio/readv.c -o $@

libc.a(munlockall.o): $(OBJDIR)/munlockall.o
$(OBJDIR)/munlockall.o: ./src/sys/mman/munlockall.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/sys/mman/munlockall.c -o $@

libc.a(munmap.o): $(OBJDIR)/munmap.o
$(OBJDIR)/munmap.o: ./src/sys/mman/munmap.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/sys/mman/munmap.c -o $@

libc.a(mlock.o): $(OBJDIR)/mlock.o
$(OBJDIR)/mlock.o: ./src/sys/mman/mlock.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/sys/mman/mlock.c -o $@

libc.a(mmap.o): $(OBJDIR)/mmap.o
$(OBJDIR)/mmap.o: ./src/sys/mman/mmap.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/sys/mman/mmap.c -o $@

libc.a(mlockall.o): $(OBJDIR)/mlockall.o
$(OBJDIR)/mlockall.o: ./src/sys/mman/mlockall.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/sys/mman/mlockall.c -o $@

libc.a(mprotect.o): $(OBJDIR)/mprotect.o
$(OBJDIR)/mprotect.o: ./src/sys/mman/mprotect.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/sys/mman/mprotect.c -o $@

libc.a(munlock.o): $(OBJDIR)/munlock.o
$(OBJDIR)/munlock.o: ./src/sys/mman/munlock.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/sys/mman/munlock.c -o $@

libc.a(shm_unlink.o): $(OBJDIR)/shm_unlink.o
$(OBJDIR)/shm_unlink.o: ./src/sys/mman/shm_unlink.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/sys/mman/shm_unlink.c -o $@

libc.a(msync.o): $(OBJDIR)/msync.o
$(OBJDIR)/msync.o: ./src/sys/mman/msync.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/sys/mman/msync.c -o $@

libc.a(shm_open.o): $(OBJDIR)/shm_open.o
$(OBJDIR)/shm_open.o: ./src/sys/mman/shm_open.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/sys/mman/shm_open.c -o $@

libc.a(msgget.o): $(OBJDIR)/msgget.o
$(OBJDIR)/msgget.o: ./src/sys/msg/msgget.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/sys/msg/msgget.c -o $@

libc.a(msgsnd.o): $(OBJDIR)/msgsnd.o
$(OBJDIR)/msgsnd.o: ./src/sys/msg/msgsnd.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/sys/msg/msgsnd.c -o $@

libc.a(msgctl.o): $(OBJDIR)/msgctl.o
$(OBJDIR)/msgctl.o: ./src/sys/msg/msgctl.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/sys/msg/msgctl.c -o $@

libc.a(msgrcv.o): $(OBJDIR)/msgrcv.o
$(OBJDIR)/msgrcv.o: ./src/sys/msg/msgrcv.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/sys/msg/msgrcv.c -o $@

libc.a(ftime.o): $(OBJDIR)/ftime.o
$(OBJDIR)/ftime.o: ./src/sys/timeb/ftime.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/sys/timeb/ftime.c -o $@

libc.a(semop.o): $(OBJDIR)/semop.o
$(OBJDIR)/semop.o: ./src/sys/sem/semop.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/sys/sem/semop.c -o $@

libc.a(semget.o): $(OBJDIR)/semget.o
$(OBJDIR)/semget.o: ./src/sys/sem/semget.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/sys/sem/semget.c -o $@

libc.a(semctl.o): $(OBJDIR)/semctl.o
$(OBJDIR)/semctl.o: ./src/sys/sem/semctl.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/sys/sem/semctl.c -o $@

libc.a(getpriority.o): $(OBJDIR)/getpriority.o
$(OBJDIR)/getpriority.o: ./src/sys/resource/getpriority.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/sys/resource/getpriority.c -o $@

libc.a(setpriority.o): $(OBJDIR)/setpriority.o
$(OBJDIR)/setpriority.o: ./src/sys/resource/setpriority.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/sys/resource/setpriority.c -o $@

libc.a(getrusage.o): $(OBJDIR)/getrusage.o
$(OBJDIR)/getrusage.o: ./src/sys/resource/getrusage.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/sys/resource/getrusage.c -o $@

libc.a(setrlimit.o): $(OBJDIR)/setrlimit.o
$(OBJDIR)/setrlimit.o: ./src/sys/resource/setrlimit.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/sys/resource/setrlimit.c -o $@

libc.a(getrlimit.o): $(OBJDIR)/getrlimit.o
$(OBJDIR)/getrlimit.o: ./src/sys/resource/getrlimit.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/sys/resource/getrlimit.c -o $@

libc.a(setitimer.o): $(OBJDIR)/setitimer.o
$(OBJDIR)/setitimer.o: ./src/sys/time/setitimer.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/sys/time/setitimer.c -o $@

libc.a(select.o): $(OBJDIR)/select.o
$(OBJDIR)/select.o: ./src/sys/time/select.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/sys/time/select.c -o $@

libc.a(utimes.o): $(OBJDIR)/utimes.o
$(OBJDIR)/utimes.o: ./src/sys/time/utimes.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/sys/time/utimes.c -o $@

libc.a(getitimer.o): $(OBJDIR)/getitimer.o
$(OBJDIR)/getitimer.o: ./src/sys/time/getitimer.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/sys/time/getitimer.c -o $@

libc.a(gettimeofday.o): $(OBJDIR)/gettimeofday.o
$(OBJDIR)/gettimeofday.o: ./src/sys/time/gettimeofday.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/sys/time/gettimeofday.c -o $@

libc.a(fstatvfs.o): $(OBJDIR)/fstatvfs.o
$(OBJDIR)/fstatvfs.o: ./src/sys/statvfs/fstatvfs.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/sys/statvfs/fstatvfs.c -o $@

libc.a(statvfs.o): $(OBJDIR)/statvfs.o
$(OBJDIR)/statvfs.o: ./src/sys/statvfs/statvfs.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/sys/statvfs/statvfs.c -o $@

libc.a(times.o): $(OBJDIR)/times.o
$(OBJDIR)/times.o: ./src/sys/times/times.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/sys/times/times.c -o $@

libc.a(umask.o): $(OBJDIR)/umask.o
$(OBJDIR)/umask.o: ./src/sys/stat/umask.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/sys/stat/umask.c -o $@

libc.a(lstat.o): $(OBJDIR)/lstat.o
$(OBJDIR)/lstat.o: ./src/sys/stat/lstat.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/sys/stat/lstat.c -o $@

libc.a(fstat.o): $(OBJDIR)/fstat.o
$(OBJDIR)/fstat.o: ./src/sys/stat/fstat.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/sys/stat/fstat.c -o $@

libc.a(mknod.o): $(OBJDIR)/mknod.o
$(OBJDIR)/mknod.o: ./src/sys/stat/mknod.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/sys/stat/mknod.c -o $@

libc.a(mkdir.o): $(OBJDIR)/mkdir.o
$(OBJDIR)/mkdir.o: ./src/sys/stat/mkdir.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/sys/stat/mkdir.c -o $@

libc.a(stat.o): $(OBJDIR)/stat.o
$(OBJDIR)/stat.o: ./src/sys/stat/stat.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/sys/stat/stat.c -o $@

libc.a(fchmod.o): $(OBJDIR)/fchmod.o
$(OBJDIR)/fchmod.o: ./src/sys/stat/fchmod.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/sys/stat/fchmod.c -o $@

libc.a(mkfifo.o): $(OBJDIR)/mkfifo.o
$(OBJDIR)/mkfifo.o: ./src/sys/stat/mkfifo.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/sys/stat/mkfifo.c -o $@

libc.a(chmod.o): $(OBJDIR)/chmod.o
$(OBJDIR)/chmod.o: ./src/sys/stat/chmod.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/sys/stat/chmod.c -o $@

libc.a(shmget.o): $(OBJDIR)/shmget.o
$(OBJDIR)/shmget.o: ./src/sys/shm/shmget.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/sys/shm/shmget.c -o $@

libc.a(shmat.o): $(OBJDIR)/shmat.o
$(OBJDIR)/shmat.o: ./src/sys/shm/shmat.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/sys/shm/shmat.c -o $@

libc.a(shmctl.o): $(OBJDIR)/shmctl.o
$(OBJDIR)/shmctl.o: ./src/sys/shm/shmctl.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/sys/shm/shmctl.c -o $@

libc.a(shmdt.o): $(OBJDIR)/shmdt.o
$(OBJDIR)/shmdt.o: ./src/sys/shm/shmdt.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/sys/shm/shmdt.c -o $@

libc.a(uname.o): $(OBJDIR)/uname.o
$(OBJDIR)/uname.o: ./src/sys/utsname/uname.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/sys/utsname/uname.c -o $@

libc.a(getdate.o): $(OBJDIR)/getdate.o
$(OBJDIR)/getdate.o: ./src/time/getdate.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/time/getdate.c -o $@

libc.a(nanosleep.o): $(OBJDIR)/nanosleep.o
$(OBJDIR)/nanosleep.o: ./src/time/nanosleep.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/time/nanosleep.c -o $@

librt.a(clock_gettime.o): $(OBJDIR)/clock_gettime.o
$(OBJDIR)/clock_gettime.o: ./src/time/clock_gettime.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/time/clock_gettime.c -o $@

libc.a(asctime.o): $(OBJDIR)/asctime.o
$(OBJDIR)/asctime.o: ./src/time/asctime.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/time/asctime.c -o $@

libc.a(difftime.o): $(OBJDIR)/difftime.o
$(OBJDIR)/difftime.o: ./src/time/difftime.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/time/difftime.c -o $@

librt.a(timer_settime.o): $(OBJDIR)/timer_settime.o
$(OBJDIR)/timer_settime.o: ./src/time/timer_settime.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/time/timer_settime.c -o $@

libc.a(strftime.o): $(OBJDIR)/strftime.o
$(OBJDIR)/strftime.o: ./src/time/strftime.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/time/strftime.c -o $@

libc.a(localtime.o): $(OBJDIR)/localtime.o
$(OBJDIR)/localtime.o: ./src/time/localtime.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/time/localtime.c -o $@

libc.a(gmtime.o): $(OBJDIR)/gmtime.o
$(OBJDIR)/gmtime.o: ./src/time/gmtime.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/time/gmtime.c -o $@

librt.a(clock_getres.o): $(OBJDIR)/clock_getres.o
$(OBJDIR)/clock_getres.o: ./src/time/clock_getres.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/time/clock_getres.c -o $@

libc.a(timezone.o): $(OBJDIR)/timezone.o
$(OBJDIR)/timezone.o: ./src/time/timezone.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/time/timezone.c -o $@

librt.a(timer_delete.o): $(OBJDIR)/timer_delete.o
$(OBJDIR)/timer_delete.o: ./src/time/timer_delete.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/time/timer_delete.c -o $@

libc.a(clock.o): $(OBJDIR)/clock.o
$(OBJDIR)/clock.o: ./src/time/clock.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/time/clock.c -o $@

libc.a(tzset.o): $(OBJDIR)/tzset.o
$(OBJDIR)/tzset.o: ./src/time/tzset.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/time/tzset.c -o $@

libc.a(strptime.o): $(OBJDIR)/strptime.o
$(OBJDIR)/strptime.o: ./src/time/strptime.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/time/strptime.c -o $@

librt.a(clock_settime.o): $(OBJDIR)/clock_settime.o
$(OBJDIR)/clock_settime.o: ./src/time/clock_settime.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/time/clock_settime.c -o $@

librt.a(timer_gettime.o): $(OBJDIR)/timer_gettime.o
$(OBJDIR)/timer_gettime.o: ./src/time/timer_gettime.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/time/timer_gettime.c -o $@

libc.a(tzname.o): $(OBJDIR)/tzname.o
$(OBJDIR)/tzname.o: ./src/time/tzname.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/time/tzname.c -o $@

libc.a(ctime.o): $(OBJDIR)/ctime.o
$(OBJDIR)/ctime.o: ./src/time/ctime.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/time/ctime.c -o $@

libc.a(getdate_err.o): $(OBJDIR)/getdate_err.o
$(OBJDIR)/getdate_err.o: ./src/time/getdate_err.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/time/getdate_err.c -o $@

libc.a(daylight.o): $(OBJDIR)/daylight.o
$(OBJDIR)/daylight.o: ./src/time/daylight.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/time/daylight.c -o $@

librt.a(timer_create.o): $(OBJDIR)/timer_create.o
$(OBJDIR)/timer_create.o: ./src/time/timer_create.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/time/timer_create.c -o $@

libc.a(mktime.o): $(OBJDIR)/mktime.o
$(OBJDIR)/mktime.o: ./src/time/mktime.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/time/mktime.c -o $@

librt.a(timer_getoverrun.o): $(OBJDIR)/timer_getoverrun.o
$(OBJDIR)/timer_getoverrun.o: ./src/time/timer_getoverrun.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/time/timer_getoverrun.c -o $@

libc.a(time.o): $(OBJDIR)/time.o
$(OBJDIR)/time.o: ./src/time/time.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/time/time.c -o $@

libc.a(ffs.o): $(OBJDIR)/ffs.o
$(OBJDIR)/ffs.o: ./src/strings/ffs.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/strings/ffs.c -o $@

libc.a(rindex.o): $(OBJDIR)/rindex.o
$(OBJDIR)/rindex.o: ./src/strings/rindex.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/strings/rindex.c -o $@

libc.a(index.o): $(OBJDIR)/index.o
$(OBJDIR)/index.o: ./src/strings/index.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/strings/index.c -o $@

libc.a(bcopy.o): $(OBJDIR)/bcopy.o
$(OBJDIR)/bcopy.o: ./src/strings/bcopy.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/strings/bcopy.c -o $@

libc.a(bcmp.o): $(OBJDIR)/bcmp.o
$(OBJDIR)/bcmp.o: ./src/strings/bcmp.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/strings/bcmp.c -o $@

libc.a(bzero.o): $(OBJDIR)/bzero.o
$(OBJDIR)/bzero.o: ./src/strings/bzero.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/strings/bzero.c -o $@

libc.a(strcasecmp.o): $(OBJDIR)/strcasecmp.o
$(OBJDIR)/strcasecmp.o: ./src/strings/strcasecmp.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/strings/strcasecmp.c -o $@

libc.a(strncasecmp.o): $(OBJDIR)/strncasecmp.o
$(OBJDIR)/strncasecmp.o: ./src/strings/strncasecmp.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/strings/strncasecmp.c -o $@

libc.a(tcdrain.o): $(OBJDIR)/tcdrain.o
$(OBJDIR)/tcdrain.o: ./src/termios/tcdrain.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/termios/tcdrain.c -o $@

libc.a(cfsetispeed.o): $(OBJDIR)/cfsetispeed.o
$(OBJDIR)/cfsetispeed.o: ./src/termios/cfsetispeed.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/termios/cfsetispeed.c -o $@

libc.a(tcgetsid.o): $(OBJDIR)/tcgetsid.o
$(OBJDIR)/tcgetsid.o: ./src/termios/tcgetsid.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/termios/tcgetsid.c -o $@

libc.a(cfsetospeed.o): $(OBJDIR)/cfsetospeed.o
$(OBJDIR)/cfsetospeed.o: ./src/termios/cfsetospeed.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/termios/cfsetospeed.c -o $@

libc.a(tcflow.o): $(OBJDIR)/tcflow.o
$(OBJDIR)/tcflow.o: ./src/termios/tcflow.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/termios/tcflow.c -o $@

libc.a(cfgetospeed.o): $(OBJDIR)/cfgetospeed.o
$(OBJDIR)/cfgetospeed.o: ./src/termios/cfgetospeed.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/termios/cfgetospeed.c -o $@

libc.a(cfgetispeed.o): $(OBJDIR)/cfgetispeed.o
$(OBJDIR)/cfgetispeed.o: ./src/termios/cfgetispeed.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/termios/cfgetispeed.c -o $@

libc.a(tcgetattr.o): $(OBJDIR)/tcgetattr.o
$(OBJDIR)/tcgetattr.o: ./src/termios/tcgetattr.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/termios/tcgetattr.c -o $@

libc.a(tcflush.o): $(OBJDIR)/tcflush.o
$(OBJDIR)/tcflush.o: ./src/termios/tcflush.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/termios/tcflush.c -o $@

libc.a(tcsendbreak.o): $(OBJDIR)/tcsendbreak.o
$(OBJDIR)/tcsendbreak.o: ./src/termios/tcsendbreak.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/termios/tcsendbreak.c -o $@

libc.a(tcsetattr.o): $(OBJDIR)/tcsetattr.o
$(OBJDIR)/tcsetattr.o: ./src/termios/tcsetattr.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/termios/tcsetattr.c -o $@

libc.a(catopen.o): $(OBJDIR)/catopen.o
$(OBJDIR)/catopen.o: ./src/nl_types/catopen.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/nl_types/catopen.c -o $@

libc.a(catgets.o): $(OBJDIR)/catgets.o
$(OBJDIR)/catgets.o: ./src/nl_types/catgets.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/nl_types/catgets.c -o $@

libc.a(catclose.o): $(OBJDIR)/catclose.o
$(OBJDIR)/catclose.o: ./src/nl_types/catclose.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/nl_types/catclose.c -o $@

libcurses.a(unctrl.o): $(OBJDIR)/unctrl.o
$(OBJDIR)/unctrl.o: ./src/unctrl/unctrl.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unctrl/unctrl.c -o $@

libc.a(strncat.o): $(OBJDIR)/strncat.o
$(OBJDIR)/strncat.o: ./src/string/strncat.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/string/strncat.c -o $@

libc.a(strcspn.o): $(OBJDIR)/strcspn.o
$(OBJDIR)/strcspn.o: ./src/string/strcspn.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/string/strcspn.c -o $@

libc.a(strdup.o): $(OBJDIR)/strdup.o
$(OBJDIR)/strdup.o: ./src/string/strdup.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/string/strdup.c -o $@

libc.a(memcpy.o): $(OBJDIR)/memcpy.o
$(OBJDIR)/memcpy.o: ./src/string/memcpy.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/string/memcpy.c -o $@

libc.a(memmove.o): $(OBJDIR)/memmove.o
$(OBJDIR)/memmove.o: ./src/string/memmove.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/string/memmove.c -o $@

libc.a(memset.o): $(OBJDIR)/memset.o
$(OBJDIR)/memset.o: ./src/string/memset.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/string/memset.c -o $@

libc.a(memccpy.o): $(OBJDIR)/memccpy.o
$(OBJDIR)/memccpy.o: ./src/string/memccpy.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/string/memccpy.c -o $@

libc.a(strcat.o): $(OBJDIR)/strcat.o
$(OBJDIR)/strcat.o: ./src/string/strcat.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/string/strcat.c -o $@

libc.a(strchr.o): $(OBJDIR)/strchr.o
$(OBJDIR)/strchr.o: ./src/string/strchr.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/string/strchr.c -o $@

libc.a(strtok.o): $(OBJDIR)/strtok.o
$(OBJDIR)/strtok.o: ./src/string/strtok.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/string/strtok.c -o $@

libc.a(memchr.o): $(OBJDIR)/memchr.o
$(OBJDIR)/memchr.o: ./src/string/memchr.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/string/memchr.c -o $@

libc.a(strcoll.o): $(OBJDIR)/strcoll.o
$(OBJDIR)/strcoll.o: ./src/string/strcoll.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/string/strcoll.c -o $@

libc.a(strcmp.o): $(OBJDIR)/strcmp.o
$(OBJDIR)/strcmp.o: ./src/string/strcmp.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/string/strcmp.c -o $@

libc.a(strrchr.o): $(OBJDIR)/strrchr.o
$(OBJDIR)/strrchr.o: ./src/string/strrchr.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/string/strrchr.c -o $@

libc.a(memcmp.o): $(OBJDIR)/memcmp.o
$(OBJDIR)/memcmp.o: ./src/string/memcmp.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/string/memcmp.c -o $@

libc.a(strcpy.o): $(OBJDIR)/strcpy.o
$(OBJDIR)/strcpy.o: ./src/string/strcpy.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/string/strcpy.c -o $@

libc.a(strxfrm.o): $(OBJDIR)/strxfrm.o
$(OBJDIR)/strxfrm.o: ./src/string/strxfrm.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/string/strxfrm.c -o $@

libc.a(strpbrk.o): $(OBJDIR)/strpbrk.o
$(OBJDIR)/strpbrk.o: ./src/string/strpbrk.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/string/strpbrk.c -o $@

libc.a(strlen.o): $(OBJDIR)/strlen.o
$(OBJDIR)/strlen.o: ./src/string/strlen.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/string/strlen.c -o $@

libc.a(strstr.o): $(OBJDIR)/strstr.o
$(OBJDIR)/strstr.o: ./src/string/strstr.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/string/strstr.c -o $@

libc.a(strspn.o): $(OBJDIR)/strspn.o
$(OBJDIR)/strspn.o: ./src/string/strspn.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/string/strspn.c -o $@

libc.a(strncpy.o): $(OBJDIR)/strncpy.o
$(OBJDIR)/strncpy.o: ./src/string/strncpy.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/string/strncpy.c -o $@

libc.a(strerror.o): $(OBJDIR)/strerror.o
$(OBJDIR)/strerror.o: ./src/string/strerror.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/string/strerror.c -o $@

libc.a(strncmp.o): $(OBJDIR)/strncmp.o
$(OBJDIR)/strncmp.o: ./src/string/strncmp.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/string/strncmp.c -o $@

libc.a(ftw.o): $(OBJDIR)/ftw.o
$(OBJDIR)/ftw.o: ./src/ftw/ftw.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/ftw/ftw.c -o $@

libc.a(nftw.o): $(OBJDIR)/nftw.o
$(OBJDIR)/nftw.o: ./src/ftw/nftw.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/ftw/nftw.c -o $@

libc.a(basename.o): $(OBJDIR)/basename.o
$(OBJDIR)/basename.o: ./src/libgen/basename.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/libgen/basename.c -o $@

libc.a(__loc1.o): $(OBJDIR)/__loc1.o
$(OBJDIR)/__loc1.o: ./src/libgen/__loc1.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/libgen/__loc1.c -o $@

libc.a(regex.o): $(OBJDIR)/regex.o
$(OBJDIR)/regex.o: ./src/libgen/regex.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/libgen/regex.c -o $@

libc.a(dirname.o): $(OBJDIR)/dirname.o
$(OBJDIR)/dirname.o: ./src/libgen/dirname.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/libgen/dirname.c -o $@

libc.a(regcmp.o): $(OBJDIR)/regcmp.o
$(OBJDIR)/regcmp.o: ./src/libgen/regcmp.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/libgen/regcmp.c -o $@

libc.a(re_exec.o): $(OBJDIR)/re_exec.o
$(OBJDIR)/re_exec.o: ./src/re_comp/re_exec.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/re_comp/re_exec.c -o $@

libc.a(re_comp.o): $(OBJDIR)/re_comp.o
$(OBJDIR)/re_comp.o: ./src/re_comp/re_comp.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/re_comp/re_comp.c -o $@

libc.a(towctrans.o): $(OBJDIR)/towctrans.o
$(OBJDIR)/towctrans.o: ./src/wctype/towctrans.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wctype/towctrans.c -o $@

libc.a(iswdigit.o): $(OBJDIR)/iswdigit.o
$(OBJDIR)/iswdigit.o: ./src/wctype/iswdigit.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wctype/iswdigit.c -o $@

libc.a(iswctype.o): $(OBJDIR)/iswctype.o
$(OBJDIR)/iswctype.o: ./src/wctype/iswctype.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wctype/iswctype.c -o $@

libc.a(iswalnum.o): $(OBJDIR)/iswalnum.o
$(OBJDIR)/iswalnum.o: ./src/wctype/iswalnum.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wctype/iswalnum.c -o $@

libc.a(iswprint.o): $(OBJDIR)/iswprint.o
$(OBJDIR)/iswprint.o: ./src/wctype/iswprint.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wctype/iswprint.c -o $@

libc.a(wctype.o): $(OBJDIR)/wctype.o
$(OBJDIR)/wctype.o: ./src/wctype/wctype.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wctype/wctype.c -o $@

libc.a(iswxdigit.o): $(OBJDIR)/iswxdigit.o
$(OBJDIR)/iswxdigit.o: ./src/wctype/iswxdigit.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wctype/iswxdigit.c -o $@

libc.a(iswcntrl.o): $(OBJDIR)/iswcntrl.o
$(OBJDIR)/iswcntrl.o: ./src/wctype/iswcntrl.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wctype/iswcntrl.c -o $@

libc.a(towlower.o): $(OBJDIR)/towlower.o
$(OBJDIR)/towlower.o: ./src/wctype/towlower.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wctype/towlower.c -o $@

libc.a(iswpunct.o): $(OBJDIR)/iswpunct.o
$(OBJDIR)/iswpunct.o: ./src/wctype/iswpunct.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wctype/iswpunct.c -o $@

libc.a(towupper.o): $(OBJDIR)/towupper.o
$(OBJDIR)/towupper.o: ./src/wctype/towupper.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wctype/towupper.c -o $@

libc.a(iswgraph.o): $(OBJDIR)/iswgraph.o
$(OBJDIR)/iswgraph.o: ./src/wctype/iswgraph.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wctype/iswgraph.c -o $@

libc.a(iswlower.o): $(OBJDIR)/iswlower.o
$(OBJDIR)/iswlower.o: ./src/wctype/iswlower.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wctype/iswlower.c -o $@

libc.a(iswspace.o): $(OBJDIR)/iswspace.o
$(OBJDIR)/iswspace.o: ./src/wctype/iswspace.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wctype/iswspace.c -o $@

libc.a(iswblank.o): $(OBJDIR)/iswblank.o
$(OBJDIR)/iswblank.o: ./src/wctype/iswblank.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wctype/iswblank.c -o $@

libc.a(wctrans.o): $(OBJDIR)/wctrans.o
$(OBJDIR)/wctrans.o: ./src/wctype/wctrans.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wctype/wctrans.c -o $@

libc.a(iswalpha.o): $(OBJDIR)/iswalpha.o
$(OBJDIR)/iswalpha.o: ./src/wctype/iswalpha.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wctype/iswalpha.c -o $@

libc.a(iswupper.o): $(OBJDIR)/iswupper.o
$(OBJDIR)/iswupper.o: ./src/wctype/iswupper.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wctype/iswupper.c -o $@

libc.a(wordexp.o): $(OBJDIR)/wordexp.o
$(OBJDIR)/wordexp.o: ./src/wordexp/wordexp.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wordexp/wordexp.c -o $@

libc.a(wordfree.o): $(OBJDIR)/wordfree.o
$(OBJDIR)/wordfree.o: ./src/wordexp/wordfree.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/wordexp/wordfree.c -o $@

libc.a(getgrent.o): $(OBJDIR)/getgrent.o
$(OBJDIR)/getgrent.o: ./src/grp/getgrent.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/grp/getgrent.c -o $@

libc.a(endgrent.o): $(OBJDIR)/endgrent.o
$(OBJDIR)/endgrent.o: ./src/grp/endgrent.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/grp/endgrent.c -o $@

libc.a(setgrent.o): $(OBJDIR)/setgrent.o
$(OBJDIR)/setgrent.o: ./src/grp/setgrent.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/grp/setgrent.c -o $@

libc.a(getgrgid.o): $(OBJDIR)/getgrgid.o
$(OBJDIR)/getgrgid.o: ./src/grp/getgrgid.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/grp/getgrgid.c -o $@

libc.a(getgrnam.o): $(OBJDIR)/getgrnam.o
$(OBJDIR)/getgrnam.o: ./src/grp/getgrnam.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/grp/getgrnam.c -o $@

libc.a(__assert.o): $(OBJDIR)/__assert.o
$(OBJDIR)/__assert.o: ./src/assert/__assert.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/assert/__assert.c -o $@

libm.a(clog.o): $(OBJDIR)/clog.o
$(OBJDIR)/clog.o: ./src/complex/clog.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/complex/clog.c -o $@

libm.a(csin.o): $(OBJDIR)/csin.o
$(OBJDIR)/csin.o: ./src/complex/csin.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/complex/csin.c -o $@

libm.a(ctanh.o): $(OBJDIR)/ctanh.o
$(OBJDIR)/ctanh.o: ./src/complex/ctanh.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/complex/ctanh.c -o $@

libm.a(ctan.o): $(OBJDIR)/ctan.o
$(OBJDIR)/ctan.o: ./src/complex/ctan.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/complex/ctan.c -o $@

libm.a(ccosh.o): $(OBJDIR)/ccosh.o
$(OBJDIR)/ccosh.o: ./src/complex/ccosh.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/complex/ccosh.c -o $@

libm.a(catan.o): $(OBJDIR)/catan.o
$(OBJDIR)/catan.o: ./src/complex/catan.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/complex/catan.c -o $@

libm.a(cpow.o): $(OBJDIR)/cpow.o
$(OBJDIR)/cpow.o: ./src/complex/cpow.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/complex/cpow.c -o $@

libm.a(csinh.o): $(OBJDIR)/csinh.o
$(OBJDIR)/csinh.o: ./src/complex/csinh.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/complex/csinh.c -o $@

libm.a(conj.o): $(OBJDIR)/conj.o
$(OBJDIR)/conj.o: ./src/complex/conj.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/complex/conj.c -o $@

libm.a(cacosh.o): $(OBJDIR)/cacosh.o
$(OBJDIR)/cacosh.o: ./src/complex/cacosh.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/complex/cacosh.c -o $@

libm.a(cproj.o): $(OBJDIR)/cproj.o
$(OBJDIR)/cproj.o: ./src/complex/cproj.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/complex/cproj.c -o $@

libm.a(catanh.o): $(OBJDIR)/catanh.o
$(OBJDIR)/catanh.o: ./src/complex/catanh.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/complex/catanh.c -o $@

libm.a(casinh.o): $(OBJDIR)/casinh.o
$(OBJDIR)/casinh.o: ./src/complex/casinh.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/complex/casinh.c -o $@

libm.a(cabs.o): $(OBJDIR)/cabs.o
$(OBJDIR)/cabs.o: ./src/complex/cabs.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/complex/cabs.c -o $@

libm.a(cexp.o): $(OBJDIR)/cexp.o
$(OBJDIR)/cexp.o: ./src/complex/cexp.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/complex/cexp.c -o $@

libm.a(ccos.o): $(OBJDIR)/ccos.o
$(OBJDIR)/ccos.o: ./src/complex/ccos.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/complex/ccos.c -o $@

libm.a(cacos.o): $(OBJDIR)/cacos.o
$(OBJDIR)/cacos.o: ./src/complex/cacos.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/complex/cacos.c -o $@

libm.a(cimag.o): $(OBJDIR)/cimag.o
$(OBJDIR)/cimag.o: ./src/complex/cimag.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/complex/cimag.c -o $@

libm.a(carg.o): $(OBJDIR)/carg.o
$(OBJDIR)/carg.o: ./src/complex/carg.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/complex/carg.c -o $@

libm.a(casin.o): $(OBJDIR)/casin.o
$(OBJDIR)/casin.o: ./src/complex/casin.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/complex/casin.c -o $@

libm.a(csqrt.o): $(OBJDIR)/csqrt.o
$(OBJDIR)/csqrt.o: ./src/complex/csqrt.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/complex/csqrt.c -o $@

libm.a(creal.o): $(OBJDIR)/creal.o
$(OBJDIR)/creal.o: ./src/complex/creal.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/complex/creal.c -o $@

libm.a(fegetenv.o): $(OBJDIR)/fegetenv.o
$(OBJDIR)/fegetenv.o: ./src/fenv/fegetenv.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/fenv/fegetenv.c -o $@

libm.a(feholdexcept.o): $(OBJDIR)/feholdexcept.o
$(OBJDIR)/feholdexcept.o: ./src/fenv/feholdexcept.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/fenv/feholdexcept.c -o $@

libm.a(fesetexceptflag.o): $(OBJDIR)/fesetexceptflag.o
$(OBJDIR)/fesetexceptflag.o: ./src/fenv/fesetexceptflag.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/fenv/fesetexceptflag.c -o $@

libm.a(feupdateenv.o): $(OBJDIR)/feupdateenv.o
$(OBJDIR)/feupdateenv.o: ./src/fenv/feupdateenv.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/fenv/feupdateenv.c -o $@

libm.a(fetestexcept.o): $(OBJDIR)/fetestexcept.o
$(OBJDIR)/fetestexcept.o: ./src/fenv/fetestexcept.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/fenv/fetestexcept.c -o $@

libm.a(feraiseexcept.o): $(OBJDIR)/feraiseexcept.o
$(OBJDIR)/feraiseexcept.o: ./src/fenv/feraiseexcept.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/fenv/feraiseexcept.c -o $@

libm.a(fegetexceptflag.o): $(OBJDIR)/fegetexceptflag.o
$(OBJDIR)/fegetexceptflag.o: ./src/fenv/fegetexceptflag.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/fenv/fegetexceptflag.c -o $@

libm.a(feclearexcept.o): $(OBJDIR)/feclearexcept.o
$(OBJDIR)/feclearexcept.o: ./src/fenv/feclearexcept.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/fenv/feclearexcept.c -o $@

libm.a(fegetround.o): $(OBJDIR)/fegetround.o
$(OBJDIR)/fegetround.o: ./src/fenv/fegetround.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/fenv/fegetround.c -o $@

libm.a(fesetround.o): $(OBJDIR)/fesetround.o
$(OBJDIR)/fesetround.o: ./src/fenv/fesetround.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/fenv/fesetround.c -o $@

libm.a(fesetenv.o): $(OBJDIR)/fesetenv.o
$(OBJDIR)/fesetenv.o: ./src/fenv/fesetenv.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/fenv/fesetenv.c -o $@

libc.a(getcwd.o): $(OBJDIR)/getcwd.o
$(OBJDIR)/getcwd.o: ./src/unistd/getcwd.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/getcwd.c -o $@

libc.a(execl.o): $(OBJDIR)/execl.o
$(OBJDIR)/execl.o: ./src/unistd/execl.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/execl.c -o $@

libc.a(chown.o): $(OBJDIR)/chown.o
$(OBJDIR)/chown.o: ./src/unistd/chown.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/chown.c -o $@

libc.a(getpgrp.o): $(OBJDIR)/getpgrp.o
$(OBJDIR)/getpgrp.o: ./src/unistd/getpgrp.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/getpgrp.c -o $@

libc.a(pipe.o): $(OBJDIR)/pipe.o
$(OBJDIR)/pipe.o: ./src/unistd/pipe.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/pipe.c -o $@

libc.a(cuserid.o): $(OBJDIR)/cuserid.o
$(OBJDIR)/cuserid.o: ./src/unistd/cuserid.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/cuserid.c -o $@

libc.a(isatty.o): $(OBJDIR)/isatty.o
$(OBJDIR)/isatty.o: ./src/unistd/isatty.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/isatty.c -o $@

libc.a(truncate.o): $(OBJDIR)/truncate.o
$(OBJDIR)/truncate.o: ./src/unistd/truncate.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/truncate.c -o $@

libc.a(execve.o): $(OBJDIR)/execve.o
$(OBJDIR)/execve.o: ./src/unistd/execve.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/execve.c -o $@

libc.a(dup.o): $(OBJDIR)/dup.o
$(OBJDIR)/dup.o: ./src/unistd/dup.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/dup.c -o $@

libc.a(dup2.o): $(OBJDIR)/dup2.o
$(OBJDIR)/dup2.o: ./src/unistd/dup2.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/dup2.c -o $@

libc.a(ualarm.o): $(OBJDIR)/ualarm.o
$(OBJDIR)/ualarm.o: ./src/unistd/ualarm.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/ualarm.c -o $@

libc.a(sysconf.o): $(OBJDIR)/sysconf.o
$(OBJDIR)/sysconf.o: ./src/unistd/sysconf.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/sysconf.c -o $@

libc.a(setuid.o): $(OBJDIR)/setuid.o
$(OBJDIR)/setuid.o: ./src/unistd/setuid.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/setuid.c -o $@

libc.a(setgid.o): $(OBJDIR)/setgid.o
$(OBJDIR)/setgid.o: ./src/unistd/setgid.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/setgid.c -o $@

libc.a(nice.o): $(OBJDIR)/nice.o
$(OBJDIR)/nice.o: ./src/unistd/nice.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/nice.c -o $@

libc.a(getppid.o): $(OBJDIR)/getppid.o
$(OBJDIR)/getppid.o: ./src/unistd/getppid.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/getppid.c -o $@

libc.a(setregid.o): $(OBJDIR)/setregid.o
$(OBJDIR)/setregid.o: ./src/unistd/setregid.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/setregid.c -o $@

libc.a(optopt.o): $(OBJDIR)/optopt.o
$(OBJDIR)/optopt.o: ./src/unistd/optopt.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/optopt.c -o $@

libc.a(write.o): $(OBJDIR)/write.o
$(OBJDIR)/write.o: ./src/unistd/write.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/write.c -o $@

libc.a(execv.o): $(OBJDIR)/execv.o
$(OBJDIR)/execv.o: ./src/unistd/execv.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/execv.c -o $@

libc.a(optind.o): $(OBJDIR)/optind.o
$(OBJDIR)/optind.o: ./src/unistd/optind.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/optind.c -o $@

libc.a(sleep.o): $(OBJDIR)/sleep.o
$(OBJDIR)/sleep.o: ./src/unistd/sleep.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/sleep.c -o $@

libc.a(encrypt.o): $(OBJDIR)/encrypt.o
$(OBJDIR)/encrypt.o: ./src/unistd/encrypt.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/encrypt.c -o $@

libc.a(geteuid.o): $(OBJDIR)/geteuid.o
$(OBJDIR)/geteuid.o: ./src/unistd/geteuid.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/geteuid.c -o $@

libc.a(setpgid.o): $(OBJDIR)/setpgid.o
$(OBJDIR)/setpgid.o: ./src/unistd/setpgid.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/setpgid.c -o $@

libc.a(opterr.o): $(OBJDIR)/opterr.o
$(OBJDIR)/opterr.o: ./src/unistd/opterr.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/opterr.c -o $@

libc.a(getpagesize.o): $(OBJDIR)/getpagesize.o
$(OBJDIR)/getpagesize.o: ./src/unistd/getpagesize.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/getpagesize.c -o $@

libc.a(vfork.o): $(OBJDIR)/vfork.o
$(OBJDIR)/vfork.o: ./src/unistd/vfork.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/vfork.c -o $@

libc.a(readlink.o): $(OBJDIR)/readlink.o
$(OBJDIR)/readlink.o: ./src/unistd/readlink.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/readlink.c -o $@

libc.a(getsid.o): $(OBJDIR)/getsid.o
$(OBJDIR)/getsid.o: ./src/unistd/getsid.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/getsid.c -o $@

libc.a(getwd.o): $(OBJDIR)/getwd.o
$(OBJDIR)/getwd.o: ./src/unistd/getwd.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/getwd.c -o $@

libc.a(setpgrp.o): $(OBJDIR)/setpgrp.o
$(OBJDIR)/setpgrp.o: ./src/unistd/setpgrp.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/setpgrp.c -o $@

libc.a(setreuid.o): $(OBJDIR)/setreuid.o
$(OBJDIR)/setreuid.o: ./src/unistd/setreuid.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/setreuid.c -o $@

libc.a(close.o): $(OBJDIR)/close.o
$(OBJDIR)/close.o: ./src/unistd/close.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/close.c -o $@

libc.a(link.o): $(OBJDIR)/link.o
$(OBJDIR)/link.o: ./src/unistd/link.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/link.c -o $@

libc.a(ctermid.o): $(OBJDIR)/ctermid.o
$(OBJDIR)/ctermid.o: ./src/unistd/ctermid.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/ctermid.c -o $@

libc.a(getpid.o): $(OBJDIR)/getpid.o
$(OBJDIR)/getpid.o: ./src/unistd/getpid.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/getpid.c -o $@

libc.a(confstr.o): $(OBJDIR)/confstr.o
$(OBJDIR)/confstr.o: ./src/unistd/confstr.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/confstr.c -o $@

libc.a(rmdir.o): $(OBJDIR)/rmdir.o
$(OBJDIR)/rmdir.o: ./src/unistd/rmdir.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/rmdir.c -o $@

libc.a(execlp.o): $(OBJDIR)/execlp.o
$(OBJDIR)/execlp.o: ./src/unistd/execlp.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/execlp.c -o $@

libc.a(chdir.o): $(OBJDIR)/chdir.o
$(OBJDIR)/chdir.o: ./src/unistd/chdir.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/chdir.c -o $@

libc.a(pathconf.o): $(OBJDIR)/pathconf.o
$(OBJDIR)/pathconf.o: ./src/unistd/pathconf.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/pathconf.c -o $@

libc.a(setsid.o): $(OBJDIR)/setsid.o
$(OBJDIR)/setsid.o: ./src/unistd/setsid.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/setsid.c -o $@

libc.a(fpathconf.o): $(OBJDIR)/fpathconf.o
$(OBJDIR)/fpathconf.o: ./src/unistd/fpathconf.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/fpathconf.c -o $@

libc.a(lseek.o): $(OBJDIR)/lseek.o
$(OBJDIR)/lseek.o: ./src/unistd/lseek.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/lseek.c -o $@

libc.a(fork.o): $(OBJDIR)/fork.o
$(OBJDIR)/fork.o: ./src/unistd/fork.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/fork.c -o $@

libc.a(swab.o): $(OBJDIR)/swab.o
$(OBJDIR)/swab.o: ./src/unistd/swab.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/swab.c -o $@

libc.a(getgroups.o): $(OBJDIR)/getgroups.o
$(OBJDIR)/getgroups.o: ./src/unistd/getgroups.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/getgroups.c -o $@

libc.a(ttyname.o): $(OBJDIR)/ttyname.o
$(OBJDIR)/ttyname.o: ./src/unistd/ttyname.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/ttyname.c -o $@

libc.a(tcgetpgrp.o): $(OBJDIR)/tcgetpgrp.o
$(OBJDIR)/tcgetpgrp.o: ./src/unistd/tcgetpgrp.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/tcgetpgrp.c -o $@

libc.a(sbrk.o): $(OBJDIR)/sbrk.o
$(OBJDIR)/sbrk.o: ./src/unistd/sbrk.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/sbrk.c -o $@

libc.a(_exit.o): $(OBJDIR)/_exit.o
$(OBJDIR)/_exit.o: ./src/unistd/_exit.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/_exit.c -o $@

libc.a(read.o): $(OBJDIR)/read.o
$(OBJDIR)/read.o: ./src/unistd/read.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/read.c -o $@

libc.a(execvp.o): $(OBJDIR)/execvp.o
$(OBJDIR)/execvp.o: ./src/unistd/execvp.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/execvp.c -o $@

libc.a(access.o): $(OBJDIR)/access.o
$(OBJDIR)/access.o: ./src/unistd/access.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/access.c -o $@

libc.a(fsync.o): $(OBJDIR)/fsync.o
$(OBJDIR)/fsync.o: ./src/unistd/fsync.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/fsync.c -o $@

libc.a(getpgid.o): $(OBJDIR)/getpgid.o
$(OBJDIR)/getpgid.o: ./src/unistd/getpgid.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/getpgid.c -o $@

libc.a(pause.o): $(OBJDIR)/pause.o
$(OBJDIR)/pause.o: ./src/unistd/pause.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/pause.c -o $@

libc.a(lockf.o): $(OBJDIR)/lockf.o
$(OBJDIR)/lockf.o: ./src/unistd/lockf.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/lockf.c -o $@

libc.a(unlink.o): $(OBJDIR)/unlink.o
$(OBJDIR)/unlink.o: ./src/unistd/unlink.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/unlink.c -o $@

libc.a(fdatasync.o): $(OBJDIR)/fdatasync.o
$(OBJDIR)/fdatasync.o: ./src/unistd/fdatasync.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/fdatasync.c -o $@

libc.a(execle.o): $(OBJDIR)/execle.o
$(OBJDIR)/execle.o: ./src/unistd/execle.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/execle.c -o $@

libc.a(getlogin.o): $(OBJDIR)/getlogin.o
$(OBJDIR)/getlogin.o: ./src/unistd/getlogin.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/getlogin.c -o $@

libc.a(optarg.o): $(OBJDIR)/optarg.o
$(OBJDIR)/optarg.o: ./src/unistd/optarg.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/optarg.c -o $@

libc.a(getgid.o): $(OBJDIR)/getgid.o
$(OBJDIR)/getgid.o: ./src/unistd/getgid.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/getgid.c -o $@

libc.a(gethostid.o): $(OBJDIR)/gethostid.o
$(OBJDIR)/gethostid.o: ./src/unistd/gethostid.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/gethostid.c -o $@

libc.a(crypt.o): $(OBJDIR)/crypt.o
$(OBJDIR)/crypt.o: ./src/unistd/crypt.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/crypt.c -o $@

libc.a(fchdir.o): $(OBJDIR)/fchdir.o
$(OBJDIR)/fchdir.o: ./src/unistd/fchdir.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/fchdir.c -o $@

libc.a(alarm.o): $(OBJDIR)/alarm.o
$(OBJDIR)/alarm.o: ./src/unistd/alarm.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/alarm.c -o $@

libc.a(getuid.o): $(OBJDIR)/getuid.o
$(OBJDIR)/getuid.o: ./src/unistd/getuid.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/getuid.c -o $@

libc.a(getegid.o): $(OBJDIR)/getegid.o
$(OBJDIR)/getegid.o: ./src/unistd/getegid.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/getegid.c -o $@

libc.a(getdtablesize.o): $(OBJDIR)/getdtablesize.o
$(OBJDIR)/getdtablesize.o: ./src/unistd/getdtablesize.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/getdtablesize.c -o $@

libc.a(getpass.o): $(OBJDIR)/getpass.o
$(OBJDIR)/getpass.o: ./src/unistd/getpass.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/getpass.c -o $@

libc.a(lchown.o): $(OBJDIR)/lchown.o
$(OBJDIR)/lchown.o: ./src/unistd/lchown.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/lchown.c -o $@

libc.a(fchown.o): $(OBJDIR)/fchown.o
$(OBJDIR)/fchown.o: ./src/unistd/fchown.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/fchown.c -o $@

libc.a(symlink.o): $(OBJDIR)/symlink.o
$(OBJDIR)/symlink.o: ./src/unistd/symlink.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/symlink.c -o $@

libc.a(chroot.o): $(OBJDIR)/chroot.o
$(OBJDIR)/chroot.o: ./src/unistd/chroot.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/chroot.c -o $@

libc.a(getopt.o): $(OBJDIR)/getopt.o
$(OBJDIR)/getopt.o: ./src/unistd/getopt.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/getopt.c -o $@

libc.a(ftruncate.o): $(OBJDIR)/ftruncate.o
$(OBJDIR)/ftruncate.o: ./src/unistd/ftruncate.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/ftruncate.c -o $@

libc.a(brk.o): $(OBJDIR)/brk.o
$(OBJDIR)/brk.o: ./src/unistd/brk.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/brk.c -o $@

libc.a(usleep.o): $(OBJDIR)/usleep.o
$(OBJDIR)/usleep.o: ./src/unistd/usleep.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/usleep.c -o $@

libc.a(tcsetpgrp.o): $(OBJDIR)/tcsetpgrp.o
$(OBJDIR)/tcsetpgrp.o: ./src/unistd/tcsetpgrp.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/tcsetpgrp.c -o $@

libc.a(sync.o): $(OBJDIR)/sync.o
$(OBJDIR)/sync.o: ./src/unistd/sync.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/unistd/sync.c -o $@

libc.a(siglongjmp.o): $(OBJDIR)/siglongjmp.o
$(OBJDIR)/siglongjmp.o: ./src/setjmp/siglongjmp.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/setjmp/siglongjmp.c -o $@

libc.a(setjmp.o): $(OBJDIR)/setjmp.o
$(OBJDIR)/setjmp.o: ./src/setjmp/setjmp.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/setjmp/setjmp.c -o $@

libc.a(longjmp.o): $(OBJDIR)/longjmp.o
$(OBJDIR)/longjmp.o: ./src/setjmp/longjmp.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/setjmp/longjmp.c -o $@

libc.a(sigsetjmp.o): $(OBJDIR)/sigsetjmp.o
$(OBJDIR)/sigsetjmp.o: ./src/setjmp/sigsetjmp.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/setjmp/sigsetjmp.c -o $@

libc.a(_setjmp.o): $(OBJDIR)/_setjmp.o
$(OBJDIR)/_setjmp.o: ./src/setjmp/_setjmp.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/setjmp/_setjmp.c -o $@

libc.a(_longjmp.o): $(OBJDIR)/_longjmp.o
$(OBJDIR)/_longjmp.o: ./src/setjmp/_longjmp.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/setjmp/_longjmp.c -o $@

librt.a(lio_listio.o): $(OBJDIR)/lio_listio.o
$(OBJDIR)/lio_listio.o: ./src/aio/lio_listio.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/aio/lio_listio.c -o $@

librt.a(aio_error.o): $(OBJDIR)/aio_error.o
$(OBJDIR)/aio_error.o: ./src/aio/aio_error.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/aio/aio_error.c -o $@

librt.a(aio_fsync.o): $(OBJDIR)/aio_fsync.o
$(OBJDIR)/aio_fsync.o: ./src/aio/aio_fsync.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/aio/aio_fsync.c -o $@

librt.a(aio_cancel.o): $(OBJDIR)/aio_cancel.o
$(OBJDIR)/aio_cancel.o: ./src/aio/aio_cancel.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/aio/aio_cancel.c -o $@

librt.a(aio_read.o): $(OBJDIR)/aio_read.o
$(OBJDIR)/aio_read.o: ./src/aio/aio_read.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/aio/aio_read.c -o $@

librt.a(aio_suspend.o): $(OBJDIR)/aio_suspend.o
$(OBJDIR)/aio_suspend.o: ./src/aio/aio_suspend.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/aio/aio_suspend.c -o $@

librt.a(aio_write.o): $(OBJDIR)/aio_write.o
$(OBJDIR)/aio_write.o: ./src/aio/aio_write.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/aio/aio_write.c -o $@

librt.a(aio_return.o): $(OBJDIR)/aio_return.o
$(OBJDIR)/aio_return.o: ./src/aio/aio_return.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/aio/aio_return.c -o $@

librt.a(sem_init.o): $(OBJDIR)/sem_init.o
$(OBJDIR)/sem_init.o: ./src/semaphore/sem_init.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/semaphore/sem_init.c -o $@

librt.a(sem_open.o): $(OBJDIR)/sem_open.o
$(OBJDIR)/sem_open.o: ./src/semaphore/sem_open.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/semaphore/sem_open.c -o $@

librt.a(sem_destroy.o): $(OBJDIR)/sem_destroy.o
$(OBJDIR)/sem_destroy.o: ./src/semaphore/sem_destroy.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/semaphore/sem_destroy.c -o $@

librt.a(sem_getvalue.o): $(OBJDIR)/sem_getvalue.o
$(OBJDIR)/sem_getvalue.o: ./src/semaphore/sem_getvalue.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/semaphore/sem_getvalue.c -o $@

librt.a(sem_close.o): $(OBJDIR)/sem_close.o
$(OBJDIR)/sem_close.o: ./src/semaphore/sem_close.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/semaphore/sem_close.c -o $@

librt.a(sem_wait.o): $(OBJDIR)/sem_wait.o
$(OBJDIR)/sem_wait.o: ./src/semaphore/sem_wait.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/semaphore/sem_wait.c -o $@

librt.a(sem_post.o): $(OBJDIR)/sem_post.o
$(OBJDIR)/sem_post.o: ./src/semaphore/sem_post.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/semaphore/sem_post.c -o $@

librt.a(sem_trywait.o): $(OBJDIR)/sem_trywait.o
$(OBJDIR)/sem_trywait.o: ./src/semaphore/sem_trywait.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/semaphore/sem_trywait.c -o $@

librt.a(sem_unlink.o): $(OBJDIR)/sem_unlink.o
$(OBJDIR)/sem_unlink.o: ./src/semaphore/sem_unlink.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/semaphore/sem_unlink.c -o $@

libc.a(va_arg.o): $(OBJDIR)/va_arg.o
$(OBJDIR)/va_arg.o: ./src/varargs/va_arg.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/varargs/va_arg.c -o $@

libc.a(va_start.o): $(OBJDIR)/va_start.o
$(OBJDIR)/va_start.o: ./src/varargs/va_start.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/varargs/va_start.c -o $@

libc.a(va_end.o): $(OBJDIR)/va_end.o
$(OBJDIR)/va_end.o: ./src/varargs/va_end.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/varargs/va_end.c -o $@

libc.a(va_dcl.o): $(OBJDIR)/va_dcl.o
$(OBJDIR)/va_dcl.o: ./src/varargs/va_dcl.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/varargs/va_dcl.c -o $@

libc.a(va_list.o): $(OBJDIR)/va_list.o
$(OBJDIR)/va_list.o: ./src/varargs/va_list.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/varargs/va_list.c -o $@

libc.a(va_alist.o): $(OBJDIR)/va_alist.o
$(OBJDIR)/va_alist.o: ./src/varargs/va_alist.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/varargs/va_alist.c -o $@

libc.a(fnmatch.o): $(OBJDIR)/fnmatch.o
$(OBJDIR)/fnmatch.o: ./src/fnmatch/fnmatch.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/fnmatch/fnmatch.c -o $@

libc.a(lldiv.o): $(OBJDIR)/lldiv.o
$(OBJDIR)/lldiv.o: ./src/stdlib/lldiv.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdlib/lldiv.c -o $@

libc.a(atol.o): $(OBJDIR)/atol.o
$(OBJDIR)/atol.o: ./src/stdlib/atol.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdlib/atol.c -o $@

libc.a(ttyslot.o): $(OBJDIR)/ttyslot.o
$(OBJDIR)/ttyslot.o: ./src/stdlib/ttyslot.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdlib/ttyslot.c -o $@

libc.a(mkstemp.o): $(OBJDIR)/mkstemp.o
$(OBJDIR)/mkstemp.o: ./src/stdlib/mkstemp.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdlib/mkstemp.c -o $@

libc.a(mbstowcs.o): $(OBJDIR)/mbstowcs.o
$(OBJDIR)/mbstowcs.o: ./src/stdlib/mbstowcs.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdlib/mbstowcs.c -o $@

libc.a(valloc.o): $(OBJDIR)/valloc.o
$(OBJDIR)/valloc.o: ./src/stdlib/valloc.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdlib/valloc.c -o $@

libc.a(drand48.o): $(OBJDIR)/drand48.o
$(OBJDIR)/drand48.o: ./src/stdlib/drand48.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdlib/drand48.c -o $@

libc.a(rand.o): $(OBJDIR)/rand.o
$(OBJDIR)/rand.o: ./src/stdlib/rand.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdlib/rand.c -o $@

libc.a(atoi.o): $(OBJDIR)/atoi.o
$(OBJDIR)/atoi.o: ./src/stdlib/atoi.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdlib/atoi.c -o $@

libc.a(initstate.o): $(OBJDIR)/initstate.o
$(OBJDIR)/initstate.o: ./src/stdlib/initstate.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdlib/initstate.c -o $@

libc.a(exit.o): $(OBJDIR)/exit.o
$(OBJDIR)/exit.o: ./src/stdlib/exit.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdlib/exit.c -o $@

libc.a(_Exit.o): $(OBJDIR)/_Exit.o
$(OBJDIR)/_Exit.o: ./src/stdlib/_Exit.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdlib/_Exit.c -o $@

libc.a(srandom.o): $(OBJDIR)/srandom.o
$(OBJDIR)/srandom.o: ./src/stdlib/srandom.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdlib/srandom.c -o $@

libc.a(strtold.o): $(OBJDIR)/strtold.o
$(OBJDIR)/strtold.o: ./src/stdlib/strtold.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdlib/strtold.c -o $@

libc.a(setstate.o): $(OBJDIR)/setstate.o
$(OBJDIR)/setstate.o: ./src/stdlib/setstate.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdlib/setstate.c -o $@

libc.a(srand.o): $(OBJDIR)/srand.o
$(OBJDIR)/srand.o: ./src/stdlib/srand.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdlib/srand.c -o $@

libc.a(unlockpt.o): $(OBJDIR)/unlockpt.o
$(OBJDIR)/unlockpt.o: ./src/stdlib/unlockpt.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdlib/unlockpt.c -o $@

libc.a(realloc.o): $(OBJDIR)/realloc.o
$(OBJDIR)/realloc.o: ./src/stdlib/realloc.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdlib/realloc.c -o $@

libc.a(labs.o): $(OBJDIR)/labs.o
$(OBJDIR)/labs.o: ./src/stdlib/labs.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdlib/labs.c -o $@

libc.a(ptsname.o): $(OBJDIR)/ptsname.o
$(OBJDIR)/ptsname.o: ./src/stdlib/ptsname.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdlib/ptsname.c -o $@

libc.a(atexit.o): $(OBJDIR)/atexit.o
$(OBJDIR)/atexit.o: ./src/stdlib/atexit.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdlib/atexit.c -o $@

libc.a(mbtowc.o): $(OBJDIR)/mbtowc.o
$(OBJDIR)/mbtowc.o: ./src/stdlib/mbtowc.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdlib/mbtowc.c -o $@

libc.a(div.o): $(OBJDIR)/div.o
$(OBJDIR)/div.o: ./src/stdlib/div.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdlib/div.c -o $@

libc.a(malloc.o): $(OBJDIR)/malloc.o
$(OBJDIR)/malloc.o: ./src/stdlib/malloc.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdlib/malloc.c -o $@

libc.a(system.o): $(OBJDIR)/system.o
$(OBJDIR)/system.o: ./src/stdlib/system.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdlib/system.c -o $@

libc.a(strtoll.o): $(OBJDIR)/strtoll.o
$(OBJDIR)/strtoll.o: ./src/stdlib/strtoll.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdlib/strtoll.c -o $@

libc.a(putenv.o): $(OBJDIR)/putenv.o
$(OBJDIR)/putenv.o: ./src/stdlib/putenv.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdlib/putenv.c -o $@

libc.a(random.o): $(OBJDIR)/random.o
$(OBJDIR)/random.o: ./src/stdlib/random.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdlib/random.c -o $@

libc.a(srand48.o): $(OBJDIR)/srand48.o
$(OBJDIR)/srand48.o: ./src/stdlib/srand48.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdlib/srand48.c -o $@

libc.a(wctomb.o): $(OBJDIR)/wctomb.o
$(OBJDIR)/wctomb.o: ./src/stdlib/wctomb.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdlib/wctomb.c -o $@

libc.a(realpath.o): $(OBJDIR)/realpath.o
$(OBJDIR)/realpath.o: ./src/stdlib/realpath.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdlib/realpath.c -o $@

libc.a(free.o): $(OBJDIR)/free.o
$(OBJDIR)/free.o: ./src/stdlib/free.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdlib/free.c -o $@

libc.a(nrand48.o): $(OBJDIR)/nrand48.o
$(OBJDIR)/nrand48.o: ./src/stdlib/nrand48.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdlib/nrand48.c -o $@

libc.a(strtol.o): $(OBJDIR)/strtol.o
$(OBJDIR)/strtol.o: ./src/stdlib/strtol.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdlib/strtol.c -o $@

libc.a(ecvt.o): $(OBJDIR)/ecvt.o
$(OBJDIR)/ecvt.o: ./src/stdlib/ecvt.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdlib/ecvt.c -o $@

libc.a(ldiv.o): $(OBJDIR)/ldiv.o
$(OBJDIR)/ldiv.o: ./src/stdlib/ldiv.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdlib/ldiv.c -o $@

libc.a(mrand48.o): $(OBJDIR)/mrand48.o
$(OBJDIR)/mrand48.o: ./src/stdlib/mrand48.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdlib/mrand48.c -o $@

libc.a(qsort.o): $(OBJDIR)/qsort.o
$(OBJDIR)/qsort.o: ./src/stdlib/qsort.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdlib/qsort.c -o $@

libc.a(strtof.o): $(OBJDIR)/strtof.o
$(OBJDIR)/strtof.o: ./src/stdlib/strtof.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdlib/strtof.c -o $@

libc.a(lcong48.o): $(OBJDIR)/lcong48.o
$(OBJDIR)/lcong48.o: ./src/stdlib/lcong48.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdlib/lcong48.c -o $@

libc.a(strtoul.o): $(OBJDIR)/strtoul.o
$(OBJDIR)/strtoul.o: ./src/stdlib/strtoul.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdlib/strtoul.c -o $@

libc.a(a64l.o): $(OBJDIR)/a64l.o
$(OBJDIR)/a64l.o: ./src/stdlib/a64l.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdlib/a64l.c -o $@

libc.a(getenv.o): $(OBJDIR)/getenv.o
$(OBJDIR)/getenv.o: ./src/stdlib/getenv.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdlib/getenv.c -o $@

libc.a(bsearch.o): $(OBJDIR)/bsearch.o
$(OBJDIR)/bsearch.o: ./src/stdlib/bsearch.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdlib/bsearch.c -o $@

libc.a(l64a.o): $(OBJDIR)/l64a.o
$(OBJDIR)/l64a.o: ./src/stdlib/l64a.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdlib/l64a.c -o $@

libc.a(mblen.o): $(OBJDIR)/mblen.o
$(OBJDIR)/mblen.o: ./src/stdlib/mblen.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdlib/mblen.c -o $@

libc.a(atof.o): $(OBJDIR)/atof.o
$(OBJDIR)/atof.o: ./src/stdlib/atof.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdlib/atof.c -o $@

libc.a(atoll.o): $(OBJDIR)/atoll.o
$(OBJDIR)/atoll.o: ./src/stdlib/atoll.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdlib/atoll.c -o $@

libc.a(lrand48.o): $(OBJDIR)/lrand48.o
$(OBJDIR)/lrand48.o: ./src/stdlib/lrand48.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdlib/lrand48.c -o $@

libc.a(strtod.o): $(OBJDIR)/strtod.o
$(OBJDIR)/strtod.o: ./src/stdlib/strtod.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdlib/strtod.c -o $@

libc.a(mktemp.o): $(OBJDIR)/mktemp.o
$(OBJDIR)/mktemp.o: ./src/stdlib/mktemp.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdlib/mktemp.c -o $@

libc.a(jrand48.o): $(OBJDIR)/jrand48.o
$(OBJDIR)/jrand48.o: ./src/stdlib/jrand48.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdlib/jrand48.c -o $@

libc.a(strtoull.o): $(OBJDIR)/strtoull.o
$(OBJDIR)/strtoull.o: ./src/stdlib/strtoull.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdlib/strtoull.c -o $@

libc.a(getsubopt.o): $(OBJDIR)/getsubopt.o
$(OBJDIR)/getsubopt.o: ./src/stdlib/getsubopt.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdlib/getsubopt.c -o $@

libc.a(grantpt.o): $(OBJDIR)/grantpt.o
$(OBJDIR)/grantpt.o: ./src/stdlib/grantpt.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdlib/grantpt.c -o $@

libc.a(erand48.o): $(OBJDIR)/erand48.o
$(OBJDIR)/erand48.o: ./src/stdlib/erand48.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdlib/erand48.c -o $@

libc.a(seed48.o): $(OBJDIR)/seed48.o
$(OBJDIR)/seed48.o: ./src/stdlib/seed48.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdlib/seed48.c -o $@

libc.a(wcstombs.o): $(OBJDIR)/wcstombs.o
$(OBJDIR)/wcstombs.o: ./src/stdlib/wcstombs.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdlib/wcstombs.c -o $@

libc.a(setkey.o): $(OBJDIR)/setkey.o
$(OBJDIR)/setkey.o: ./src/stdlib/setkey.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdlib/setkey.c -o $@

libc.a(abort.o): $(OBJDIR)/abort.o
$(OBJDIR)/abort.o: ./src/stdlib/abort.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdlib/abort.c -o $@

libc.a(abs.o): $(OBJDIR)/abs.o
$(OBJDIR)/abs.o: ./src/stdlib/abs.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdlib/abs.c -o $@

libc.a(fcvt.o): $(OBJDIR)/fcvt.o
$(OBJDIR)/fcvt.o: ./src/stdlib/fcvt.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdlib/fcvt.c -o $@

libc.a(gcvt.o): $(OBJDIR)/gcvt.o
$(OBJDIR)/gcvt.o: ./src/stdlib/gcvt.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdlib/gcvt.c -o $@

libc.a(calloc.o): $(OBJDIR)/calloc.o
$(OBJDIR)/calloc.o: ./src/stdlib/calloc.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdlib/calloc.c -o $@

libc.a(llabs.o): $(OBJDIR)/llabs.o
$(OBJDIR)/llabs.o: ./src/stdlib/llabs.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/stdlib/llabs.c -o $@

libm.a(yn.o): $(OBJDIR)/yn.o
$(OBJDIR)/yn.o: ./src/math/yn.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/yn.c -o $@

libm.a(fmod.o): $(OBJDIR)/fmod.o
$(OBJDIR)/fmod.o: ./src/math/fmod.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/fmod.c -o $@

libm.a(cbrt.o): $(OBJDIR)/cbrt.o
$(OBJDIR)/cbrt.o: ./src/math/cbrt.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/cbrt.c -o $@

libm.a(gamma.o): $(OBJDIR)/gamma.o
$(OBJDIR)/gamma.o: ./src/math/gamma.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/gamma.c -o $@

libm.a(jn.o): $(OBJDIR)/jn.o
$(OBJDIR)/jn.o: ./src/math/jn.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/jn.c -o $@

libm.a(log10.o): $(OBJDIR)/log10.o
$(OBJDIR)/log10.o: ./src/math/log10.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/log10.c -o $@

libm.a(modf.o): $(OBJDIR)/modf.o
$(OBJDIR)/modf.o: ./src/math/modf.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/modf.c -o $@

libm.a(acos.o): $(OBJDIR)/acos.o
$(OBJDIR)/acos.o: ./src/math/acos.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/acos.c -o $@

libm.a(nexttoward.o): $(OBJDIR)/nexttoward.o
$(OBJDIR)/nexttoward.o: ./src/math/nexttoward.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/nexttoward.c -o $@

libm.a(sin.o): $(OBJDIR)/sin.o
$(OBJDIR)/sin.o: ./src/math/sin.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/sin.c -o $@

libm.a(y1.o): $(OBJDIR)/y1.o
$(OBJDIR)/y1.o: ./src/math/y1.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/y1.c -o $@

libm.a(erfc.o): $(OBJDIR)/erfc.o
$(OBJDIR)/erfc.o: ./src/math/erfc.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/erfc.c -o $@

libm.a(remquo.o): $(OBJDIR)/remquo.o
$(OBJDIR)/remquo.o: ./src/math/remquo.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/remquo.c -o $@

libm.a(nan.o): $(OBJDIR)/nan.o
$(OBJDIR)/nan.o: ./src/math/nan.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/nan.c -o $@

libm.a(fma.o): $(OBJDIR)/fma.o
$(OBJDIR)/fma.o: ./src/math/fma.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/fma.c -o $@

libm.a(floor.o): $(OBJDIR)/floor.o
$(OBJDIR)/floor.o: ./src/math/floor.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/floor.c -o $@

libm.a(signgam.o): $(OBJDIR)/signgam.o
$(OBJDIR)/signgam.o: ./src/math/signgam.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/signgam.c -o $@

libm.a(asin.o): $(OBJDIR)/asin.o
$(OBJDIR)/asin.o: ./src/math/asin.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/asin.c -o $@

libm.a(llround.o): $(OBJDIR)/llround.o
$(OBJDIR)/llround.o: ./src/math/llround.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/llround.c -o $@

libm.a(llrint.o): $(OBJDIR)/llrint.o
$(OBJDIR)/llrint.o: ./src/math/llrint.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/llrint.c -o $@

libm.a(y0.o): $(OBJDIR)/y0.o
$(OBJDIR)/y0.o: ./src/math/y0.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/y0.c -o $@

libm.a(frexp.o): $(OBJDIR)/frexp.o
$(OBJDIR)/frexp.o: ./src/math/frexp.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/frexp.c -o $@

libm.a(remainder.o): $(OBJDIR)/remainder.o
$(OBJDIR)/remainder.o: ./src/math/remainder.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/remainder.c -o $@

libm.a(asinh.o): $(OBJDIR)/asinh.o
$(OBJDIR)/asinh.o: ./src/math/asinh.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/asinh.c -o $@

libm.a(j1.o): $(OBJDIR)/j1.o
$(OBJDIR)/j1.o: ./src/math/j1.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/j1.c -o $@

libm.a(round.o): $(OBJDIR)/round.o
$(OBJDIR)/round.o: ./src/math/round.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/round.c -o $@

libm.a(hypot.o): $(OBJDIR)/hypot.o
$(OBJDIR)/hypot.o: ./src/math/hypot.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/hypot.c -o $@

libm.a(cos.o): $(OBJDIR)/cos.o
$(OBJDIR)/cos.o: ./src/math/cos.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/cos.c -o $@

libm.a(j0.o): $(OBJDIR)/j0.o
$(OBJDIR)/j0.o: ./src/math/j0.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/j0.c -o $@

libm.a(log.o): $(OBJDIR)/log.o
$(OBJDIR)/log.o: ./src/math/log.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/log.c -o $@

libm.a(tan.o): $(OBJDIR)/tan.o
$(OBJDIR)/tan.o: ./src/math/tan.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/tan.c -o $@

libm.a(lround.o): $(OBJDIR)/lround.o
$(OBJDIR)/lround.o: ./src/math/lround.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/lround.c -o $@

libm.a(expm1.o): $(OBJDIR)/expm1.o
$(OBJDIR)/expm1.o: ./src/math/expm1.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/expm1.c -o $@

libm.a(rint.o): $(OBJDIR)/rint.o
$(OBJDIR)/rint.o: ./src/math/rint.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/rint.c -o $@

libm.a(ilogb.o): $(OBJDIR)/ilogb.o
$(OBJDIR)/ilogb.o: ./src/math/ilogb.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/ilogb.c -o $@

libm.a(log2.o): $(OBJDIR)/log2.o
$(OBJDIR)/log2.o: ./src/math/log2.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/log2.c -o $@

libm.a(erf.o): $(OBJDIR)/erf.o
$(OBJDIR)/erf.o: ./src/math/erf.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/erf.c -o $@

libm.a(sqrt.o): $(OBJDIR)/sqrt.o
$(OBJDIR)/sqrt.o: ./src/math/sqrt.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/sqrt.c -o $@

libm.a(sinh.o): $(OBJDIR)/sinh.o
$(OBJDIR)/sinh.o: ./src/math/sinh.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/sinh.c -o $@

libm.a(fdim.o): $(OBJDIR)/fdim.o
$(OBJDIR)/fdim.o: ./src/math/fdim.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/fdim.c -o $@

libm.a(atan2.o): $(OBJDIR)/atan2.o
$(OBJDIR)/atan2.o: ./src/math/atan2.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/atan2.c -o $@

libm.a(atanh.o): $(OBJDIR)/atanh.o
$(OBJDIR)/atanh.o: ./src/math/atanh.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/atanh.c -o $@

libm.a(pow.o): $(OBJDIR)/pow.o
$(OBJDIR)/pow.o: ./src/math/pow.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/pow.c -o $@

libm.a(fmin.o): $(OBJDIR)/fmin.o
$(OBJDIR)/fmin.o: ./src/math/fmin.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/fmin.c -o $@

libm.a(copysign.o): $(OBJDIR)/copysign.o
$(OBJDIR)/copysign.o: ./src/math/copysign.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/copysign.c -o $@

libm.a(atan.o): $(OBJDIR)/atan.o
$(OBJDIR)/atan.o: ./src/math/atan.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/atan.c -o $@

libm.a(lgamma.o): $(OBJDIR)/lgamma.o
$(OBJDIR)/lgamma.o: ./src/math/lgamma.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/lgamma.c -o $@

libm.a(scalbn.o): $(OBJDIR)/scalbn.o
$(OBJDIR)/scalbn.o: ./src/math/scalbn.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/scalbn.c -o $@

libm.a(ceil.o): $(OBJDIR)/ceil.o
$(OBJDIR)/ceil.o: ./src/math/ceil.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/ceil.c -o $@

libm.a(scalb.o): $(OBJDIR)/scalb.o
$(OBJDIR)/scalb.o: ./src/math/scalb.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/scalb.c -o $@

libm.a(exp.o): $(OBJDIR)/exp.o
$(OBJDIR)/exp.o: ./src/math/exp.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/exp.c -o $@

libm.a(fmax.o): $(OBJDIR)/fmax.o
$(OBJDIR)/fmax.o: ./src/math/fmax.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/fmax.c -o $@

libm.a(tanh.o): $(OBJDIR)/tanh.o
$(OBJDIR)/tanh.o: ./src/math/tanh.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/tanh.c -o $@

libm.a(scalbln.o): $(OBJDIR)/scalbln.o
$(OBJDIR)/scalbln.o: ./src/math/scalbln.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/scalbln.c -o $@

libm.a(lrint.o): $(OBJDIR)/lrint.o
$(OBJDIR)/lrint.o: ./src/math/lrint.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/lrint.c -o $@

libm.a(tgamma.o): $(OBJDIR)/tgamma.o
$(OBJDIR)/tgamma.o: ./src/math/tgamma.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/tgamma.c -o $@

libm.a(fabs.o): $(OBJDIR)/fabs.o
$(OBJDIR)/fabs.o: ./src/math/fabs.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/fabs.c -o $@

libm.a(nearbyint.o): $(OBJDIR)/nearbyint.o
$(OBJDIR)/nearbyint.o: ./src/math/nearbyint.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/nearbyint.c -o $@

libm.a(log1p.o): $(OBJDIR)/log1p.o
$(OBJDIR)/log1p.o: ./src/math/log1p.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/log1p.c -o $@

libm.a(acosh.o): $(OBJDIR)/acosh.o
$(OBJDIR)/acosh.o: ./src/math/acosh.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/acosh.c -o $@

libm.a(ldexp.o): $(OBJDIR)/ldexp.o
$(OBJDIR)/ldexp.o: ./src/math/ldexp.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/ldexp.c -o $@

libm.a(exp2.o): $(OBJDIR)/exp2.o
$(OBJDIR)/exp2.o: ./src/math/exp2.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/exp2.c -o $@

libm.a(trunc.o): $(OBJDIR)/trunc.o
$(OBJDIR)/trunc.o: ./src/math/trunc.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/trunc.c -o $@

libm.a(nextafter.o): $(OBJDIR)/nextafter.o
$(OBJDIR)/nextafter.o: ./src/math/nextafter.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/nextafter.c -o $@

libm.a(cosh.o): $(OBJDIR)/cosh.o
$(OBJDIR)/cosh.o: ./src/math/cosh.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/cosh.c -o $@

libm.a(logb.o): $(OBJDIR)/logb.o
$(OBJDIR)/logb.o: ./src/math/logb.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/math/logb.c -o $@

libc.a(loc1.o): $(OBJDIR)/loc1.o
$(OBJDIR)/loc1.o: ./src/regexp/loc1.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/regexp/loc1.c -o $@

libc.a(step.o): $(OBJDIR)/step.o
$(OBJDIR)/step.o: ./src/regexp/step.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/regexp/step.c -o $@

libc.a(advance.o): $(OBJDIR)/advance.o
$(OBJDIR)/advance.o: ./src/regexp/advance.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/regexp/advance.c -o $@

libc.a(loc2.o): $(OBJDIR)/loc2.o
$(OBJDIR)/loc2.o: ./src/regexp/loc2.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/regexp/loc2.c -o $@

libc.a(locs.o): $(OBJDIR)/locs.o
$(OBJDIR)/locs.o: ./src/regexp/locs.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/regexp/locs.c -o $@

libc.a(compile.o): $(OBJDIR)/compile.o
$(OBJDIR)/compile.o: ./src/regexp/compile.c
	$(CC) $(BASE_CFLAGS) $(CFLAGS) -c ./src/regexp/compile.c -o $@


include $(TOPDIR)/.deps/libc.C_1
include $(TOPDIR)/.deps/libc.POSIX_1
include $(TOPDIR)/.deps/libc.POSIX_2
include $(TOPDIR)/.deps/libm.C_1
include $(TOPDIR)/.deps/libm.mk

include $(TOPDIR)/.deps/libc.mk

all: libc.a libm.a
