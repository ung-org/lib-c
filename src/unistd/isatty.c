#if 0

#include <sys/types.h>
#include <unistd.h>
#include <termios.h>

/** test for a terminal device **/

int isatty(int fildes)
{
	struct termios tios;
	if (tcgetattr(fildes, &tios) == 0) {
		/* errno set by tcgetattr() */
		#if 0
		errno = EBADF;	/* ARGUMENT(fildes) is not a valid file descriptor */
		errno = ENOTTY;	/* ARGUMENT(fildes) is not associated with a terminal */
		#endif
		return 1;
	}
	return 0;
}

/***
checks whether the file descriptor ARGUMENT(fildes) is associated with a
terminal device.
***/

/*
RETURN(ZERO, ARGUMENT(fildes) is not a terminal)
RETURN(ONE, ARGUMENT(fildes) is a terminal device)
POSIX(1)
*/


#endif
