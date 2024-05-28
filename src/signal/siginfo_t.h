#include <signal.h>

#if 0
typedef struct {
	int si_signo;
	int si_code;
	pid_t si_pid;
	uid_t si_uid;
	void *si_addr;
	int si_status;
	long si_band;
	int si_errno;
	union sigval si_value;
} siginfo_t;
#else

typedef struct {
#ifdef __SI_SWAP_ERRNO_CODE
        int si_signo, si_code, si_errno;
#else
        int si_signo, si_errno, si_code;
#endif
        union {
                char __pad[128 - 2*sizeof(int) - sizeof(long)];
                struct {
                        union {
                                struct {
                                        pid_t si_pid;
                                        uid_t si_uid;
                                } __piduid;
                                struct {
                                        int si_timerid;
                                        int si_overrun;
                                } __timer;
                        } __first;
                        union {
                                union sigval si_value;
                                struct {
                                        int si_status;
                                        clock_t si_utime, si_stime;
                                } __sigchld;
                        } __second;
                } __si_common;
                struct {
                        void *si_addr;
                        short si_addr_lsb;
                        union {
                                struct {
                                        void *si_lower;
                                        void *si_upper;
                                } __addr_bnd;
                                unsigned si_pkey;
                        } __first;
                } __sigfault;
                struct {
                        long si_band;
                        int si_fd;
                } __sigpoll;
                struct {
                        void *si_call_addr;
                        int si_syscall;
                        unsigned si_arch;
                } __sigsys;
        } __si_fields;
} siginfo_t;

#define si_pid     __si_fields.__si_common.__first.__piduid.si_pid
#define si_uid     __si_fields.__si_common.__first.__piduid.si_uid
#define si_status  __si_fields.__si_common.__second.__sigchld.si_status
#define si_utime   __si_fields.__si_common.__second.__sigchld.si_utime
#define si_stime   __si_fields.__si_common.__second.__sigchld.si_stime
#define si_value   __si_fields.__si_common.__second.si_value
#define si_addr    __si_fields.__sigfault.si_addr
#define si_addr_lsb __si_fields.__sigfault.si_addr_lsb
#define si_lower   __si_fields.__sigfault.__first.__addr_bnd.si_lower
#define si_upper   __si_fields.__sigfault.__first.__addr_bnd.si_upper
#define si_pkey    __si_fields.__sigfault.__first.si_pkey
#define si_band    __si_fields.__sigpoll.si_band
#define si_fd      __si_fields.__sigpoll.si_fd
#define si_timerid __si_fields.__si_common.__first.__timer.si_timerid
#define si_overrun __si_fields.__si_common.__first.__timer.si_overrun
#define si_ptr     si_value.sival_ptr
#define si_int     si_value.sival_int
#define si_call_addr __si_fields.__sigsys.si_call_addr
#define si_syscall __si_fields.__sigsys.si_syscall
#define si_arch    __si_fields.__sigsys.si_arch

#endif

/*
XOPEN(400)
POSIX(199309)
*/
