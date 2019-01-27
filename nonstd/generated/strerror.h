#include <errno.h>

static const char *__strerror[] = {
#ifdef EILSEQ
	[EILSEQ] = "Illegal sequence / Illegal byte sequence",
#endif
#ifdef EDOM
	[EDOM] = "Domain error: The argument is outside the defined input domain",
#endif
#ifdef ERANGE
	[ERANGE] = "Out of range: The result of the operation is too large or too small",
#endif
#ifdef ECANCELED
	[ECANCELED] = "Operation canceled",
#endif
#ifdef ENETRESET
	[ENETRESET] = "Connection abored by network",
#endif
#ifdef ENOTRECOVERABLE
	[ENOTRECOVERABLE] = "State not recoverable",
#endif
#ifdef EOWNERDEAD
	[EOWNERDEAD] = "Previous owner died",
#endif
#ifdef E2BIG
	[E2BIG] = "Argument list too long",
#endif
#ifdef EACCESS
	[EACCESS] = "Permission denied",
#endif
#ifdef EAGAIN
	[EAGAIN] = "Resource unavailable, try again",
#endif
#ifdef EBADF
	[EBADF] = "Bad file descriptor",
#endif
#ifdef EBUSY
	[EBUSY] = "Device or resource busy",
#endif
#ifdef ECHILD
	[ECHILD] = "No child processes",
#endif
#ifdef EDEADLK
	[EDEADLK] = "Resource deadlock would occur",
#endif
#ifdef EEXIST
	[EEXIST] = "File exists",
#endif
#ifdef EFAULT
	[EFAULT] = "Bad address",
#endif
#ifdef EFBIG
	[EFBIG] = "File too large",
#endif
#ifdef EINTR
	[EINTR] = "Interrupted function",
#endif
#ifdef EINVAL
	[EINVAL] = "Invalid argument",
#endif
#ifdef EIO
	[EIO] = "I/O error",
#endif
#ifdef EISDIR
	[EISDIR] = "Is a directory",
#endif
#ifdef EMFILE
	[EMFILE] = "File descriptor value too large",
#endif
#ifdef EMLINK
	[EMLINK] = "Too many links",
#endif
#ifdef ENAMETOOLONG
	[ENAMETOOLONG] = "Filename too long",
#endif
#ifdef ENFILE
	[ENFILE] = "Too many files open in system",
#endif
#ifdef ENODEV
	[ENODEV] = "No such device",
#endif
#ifdef ENOENT
	[ENOENT] = "No such file or directory",
#endif
#ifdef ENOEXEC
	[ENOEXEC] = "Executable file format error",
#endif
#ifdef ENOLCK
	[ENOLCK] = "No locks available",
#endif
#ifdef ENOMEM
	[ENOMEM] = "Not enough space",
#endif
#ifdef ENOSPC
	[ENOSPC] = "No space left on device",
#endif
#ifdef ENOSYS
	[ENOSYS] = "Function not supported",
#endif
#ifdef ENOTDIR
	[ENOTDIR] = "Not a directory or a symbolic link to a directory",
#endif
#ifdef ENOTEMPTY
	[ENOTEMPTY] = "Directory not empty",
#endif
#ifdef ENOTSUP
	[ENOTSUP] = "Not supported",
#endif
#ifdef ENOTTY
	[ENOTTY] = "Inappropriate I/O control operation",
#endif
#ifdef ENXIO
	[ENXIO] = "No such device or address",
#endif
#ifdef EOVERFLOW
	[EOVERFLOW] = "Value too large to be stored in data type",
#endif
#ifdef EPERM
	[EPERM] = "Operation not permitted",
#endif
#ifdef EPIPE
	[EPIPE] = "Broken pipe",
#endif
#ifdef EROFS
	[EROFS] = "Read-only file system",
#endif
#ifdef ESPIPE
	[ESPIPE] = "Invalid seek",
#endif
#ifdef ESRCH
	[ESRCH] = "No such process",
#endif
#ifdef EXDEV
	[EXDEV] = "Cross-device link",
#endif
#ifdef EADDRINUSE
	[EADDRINUSE] = "Address in use",
#endif
#ifdef EADDRNOTAVAIL
	[EADDRNOTAVAIL] = "Address not available",
#endif
#ifdef EAFNOSUPPORT
	[EAFNOSUPPORT] = "Address family not supported",
#endif
#ifdef EALREADY
	[EALREADY] = "Connection already in progress",
#endif
#ifdef EBADMSG
	[EBADMSG] = "Bad message",
#endif
#ifdef ECONNABORTED
	[ECONNABORTED] = "Connection aborted",
#endif
#ifdef ECONNREFUSED
	[ECONNREFUSED] = "Connection refused",
#endif
#ifdef ECONNRESET
	[ECONNRESET] = "Connection reset",
#endif
#ifdef EDESTADDRREQ
	[EDESTADDRREQ] = "Destination address required",
#endif
#ifdef EDQUOT
	[EDQUOT] = "Reserved",
#endif
#ifdef EHOSTUNREACH
	[EHOSTUNREACH] = "Host is unreachable",
#endif
#ifdef EINPROGRESS
	[EINPROGRESS] = "Operation in progress",
#endif
#ifdef EISCONN
	[EISCONN] = "Socket is connected",
#endif
#ifdef ELOOP
	[ELOOP] = "Too many levels of symbolic links",
#endif
#ifdef EMSGSIZE
	[EMSGSIZE] = "Message too large",
#endif
#ifdef EMULTIHOP
	[EMULTIHOP] = "Reserved",
#endif
#ifdef ENETDOWN
	[ENETDOWN] = "Network is down",
#endif
#ifdef ENETUNREACH
	[ENETUNREACH] = "Network unreachable",
#endif
#ifdef ENOBUFS
	[ENOBUFS] = "No buffer space available",
#endif
#ifdef ENODATA
	[ENODATA] = "No message is available on the STREAM head read queue",
#endif
#ifdef ENOLINK
	[ENOLINK] = "Reserved",
#endif
#ifdef ENOMSG
	[ENOMSG] = "No message of the desired type",
#endif
#ifdef ENOPROTOOPT
	[ENOPROTOOPT] = "Protocol not available",
#endif
#ifdef ENOSR
	[ENOSR] = "No STREAM resources",
#endif
#ifdef ENOSTR
	[ENOSTR] = "Not a STREAM",
#endif
#ifdef ENOTCONN
	[ENOTCONN] = "The socket is not connected",
#endif
#ifdef ENOTSOCK
	[ENOTSOCK] = "Not a socket",
#endif
#ifdef EOPNOTSUPP
	[EOPNOTSUPP] = "Operation not supported on socket",
#endif
#ifdef EPROTO
	[EPROTO] = "Protocol error",
#endif
#ifdef EPROTONOSUPPORT
	[EPROTONOSUPPORT] = "Protocol not supported",
#endif
#ifdef EPROTOTYPE
	[EPROTOTYPE] = "Protocol wrong type for socket",
#endif
#ifdef ESTALE
	[ESTALE] = "Reserved",
#endif
#ifdef ETIME
	[ETIME] = "Stream ioctl() timeout",
#endif
#ifdef ETIMEDOUT
	[ETIMEDOUT] = "Connection timed out",
#endif
#ifdef EWOULDBLOCK
	[EWOULDBLOCK] = "Operation would block",
#endif
#ifdef EIDRM
	[EIDRM] = "Identifier removed",
#endif
#ifdef ETXTBSY
	[ETXTBSY] = "Text file busy",
#endif
};
