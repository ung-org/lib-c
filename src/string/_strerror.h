#ifdef EDOM
case EDOM: strcpy(errstr, "domain error [EDOM]"); break;
#endif
#ifdef ERANGE
case ERANGE: strcpy(errstr, "out of range [ERANGE]"); break;
#endif
#ifdef E2BIG
case E2BIG: strcpy(errstr, "Argument list too long [E2BIG]"); break;
#endif
#ifdef EACCES
case EACCES: strcpy(errstr, "Permission denied [EACCES]"); break;
#endif
#ifdef EAGAIN
case EAGAIN: strcpy(errstr, "Resource unavailable, try again [EAGAIN]"); break;
#endif
#ifdef EBADF
case EBADF: strcpy(errstr, "Bad file descriptor [EBADF]"); break;
#endif
#ifdef EBUSY
case EBUSY: strcpy(errstr, "Device or resource busy [EBUSY]"); break;
#endif
#ifdef ECHILD
case ECHILD: strcpy(errstr, "No child processes [ECHILD]"); break;
#endif
#ifdef EDEADLK
case EDEADLK: strcpy(errstr, "Resource deadlock would occur [EDEADLK]"); break;
#endif
#ifdef EEXIST
case EEXIST: strcpy(errstr, "File exists [EEXIST]"); break;
#endif
#ifdef EFAULT
case EFAULT: strcpy(errstr, "Bad address [EFAULT]"); break;
#endif
#ifdef EFBIG
case EFBIG: strcpy(errstr, "File too large [EFBIG]"); break;
#endif
#ifdef EINTR
case EINTR: strcpy(errstr, "Interrupted function [EINTR]"); break;
#endif
#ifdef EINVAL
case EINVAL: strcpy(errstr, "Invalid argument [EINVAL]"); break;
#endif
#ifdef EIO
case EIO: strcpy(errstr, "I/O error [EIO]"); break;
#endif
#ifdef EISDIR
case EISDIR: strcpy(errstr, "Is a directory [EISDIR]"); break;
#endif
#ifdef EMFILE
case EMFILE: strcpy(errstr, "File descriptor value too large [EMFILE]"); break;
#endif
#ifdef EMLINK
case EMLINK: strcpy(errstr, "Too many links [EMLINK]"); break;
#endif
#ifdef ENAMETOOLONG
case ENAMETOOLONG: strcpy(errstr, "Filename too long [ENAMETOOLONG]"); break;
#endif
#ifdef ENFILE
case ENFILE: strcpy(errstr, "Too many files open in system [ENFILE]"); break;
#endif
#ifdef ENODEV
case ENODEV: strcpy(errstr, "No such device [ENODEV]"); break;
#endif
#ifdef ENOENT
case ENOENT: strcpy(errstr, "No such file or directory [ENOENT]"); break;
#endif
#ifdef ENOEXEC
case ENOEXEC: strcpy(errstr, "Executable file format error [ENOEXEC]"); break;
#endif
#ifdef ENOLCK
case ENOLCK: strcpy(errstr, "No locks available [ENOLCK]"); break;
#endif
#ifdef ENOMEM
case ENOMEM: strcpy(errstr, "Not enough space [ENOMEM]"); break;
#endif
#ifdef ENOSPC
case ENOSPC: strcpy(errstr, "No space left on device [ENOSPC]"); break;
#endif
#ifdef ENOSYS
case ENOSYS: strcpy(errstr, "Function not supported [ENOSYS]"); break;
#endif
#ifdef ENOTDIR
case ENOTDIR: strcpy(errstr, "Not a directory or a symbolic link to a directory [ENOTDIR]"); break;
#endif
#ifdef ENOTEMPTY
case ENOTEMPTY: strcpy(errstr, "Directory not empty [ENOTEMPTY]"); break;
#endif
#ifdef ENOTTY
case ENOTTY: strcpy(errstr, "Inappropriate I/O control operation [ENOTTY]"); break;
#endif
#ifdef ENXIO
case ENXIO: strcpy(errstr, "No such device or address [ENXIO]"); break;
#endif
#ifdef EPERM
case EPERM: strcpy(errstr, "Operation not permitted [EPERM]"); break;
#endif
#ifdef EPIPE
case EPIPE: strcpy(errstr, "Broken pipe [EPIPE]"); break;
#endif
#ifdef EROFS
case EROFS: strcpy(errstr, "Read-only file system [EROFS]"); break;
#endif
#ifdef ESPIPE
case ESPIPE: strcpy(errstr, "Invalid seek [ESPIPE]"); break;
#endif
#ifdef ESRCH
case ESRCH: strcpy(errstr, "No such process [ESRCH]"); break;
#endif
#ifdef EXDEV
case EXDEV: strcpy(errstr, "Cross-device link [EXDEV]"); break;
#endif
