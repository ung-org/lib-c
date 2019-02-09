#include <ulimit.h>
#include "sys/resource.h"
#include "stdarg.h"

long ulimit(int cmd, ...)
{
	struct rlimit rl;

	if (cmd == UL_GETFSIZE) {
		if (getrlimit(RLIMIT_FSIZE, &rl) == 0) {
			return (long)(rl.rlim_cur / 512);
		}
		return -1;
	} else if (cmd == UL_SETFSIZE) {
		va_list ap;
		va_start(cmd);
		rl.rlim_cur = va_arg(ap, rlim_t) * 512;
		va_end(ap);
		if (setrlimit(RLIMIT_FSIZE, NULL) == 0) {
			return (long)(rl.rlim_cur / 512);
		}
		return -1;
	}

	errno = EINVAL;
	return -1;
}

/** POSIX-7-OB-XSI: ulimit.h */

/*d
The ulimit() function shall control process limits. The process limits that can be controlled by this function include the maximum size of a single file that can be written (this is equivalent to using setrlimit() with RLIMIT_FSIZE). The cmd values, defined in <ulimit.h>, include:

UL_GETFSIZE
Return the file size limit (RLIMIT_FSIZE) of the process. The limit shall be in units of 512-byte blocks and shall be inherited by child processes. Files of any size can be read. The return value shall be the integer part of the soft file size limit divided by 512. If the result cannot be represented as a long, the result is unspecified.
UL_SETFSIZE
Set the file size limit for output operations of the process to the value of the second argument, taken as a long, multiplied by 512. If the result would overflow an rlim_t, the actual value set is unspecified. Any process may decrease its own limit, but only a process with appropriate privileges may increase the limit. The return value shall be the integer part of the new file size limit divided by 512.
The ulimit() function shall not change the setting of errno if successful.

As all return values are permissible in a successful situation, an application wishing to check for error situations should set errno to 0, then call ulimit(), and, if it returns -1, check to see if errno is non-zero.

d*/


/*r
Upon successful completion, ulimit() shall return the value of the requested limit. Otherwise, -1 shall be returned and errno set to indicate the error.

r*/

/*e
The ulimit() function shall fail and the limit shall be unchanged if:

[EINVAL]
The cmd argument is not valid.
[EPERM]
A process not having appropriate privileges attempts to increase its file size limit.
e*/

/*
XOPEN(4)
*/
