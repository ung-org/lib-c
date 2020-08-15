#ifndef ___TERMIOS_H__
#define ___TERMIOS_H__

#include <termios.h>
#include <string.h>

#ifdef __linux__
#include "_syscall.h"

#define KNCCS 19
#define MINCCS (KNCCS < NCCS ? KNCCS : NCCS)

#define TCGETS		0x5401
#define TCSETS		0x5402
#define TCSETSW		0x5403
#define TCSETSF		0x5404
#define TCSBRK		0x5409
#define TCSBRKP		0x5425
#define TCXONC		0x540A
#define TCFLSH		0x540B
#define TIOCGPGRP	0x540F
#define TIOCSPGRP	0x5410
#define TIOCGSID	0x5429

#define ioctl(_fd, _cmd, _arg) __syscall(16, _fd, _cmd, _arg)

struct kernel_termios {
	tcflag_t c_iflag;
	tcflag_t c_oflag;
	tcflag_t c_cflag;
	tcflag_t c_lflag;
	cc_t c_line;
	cc_t c_cc[KNCCS];
	speed_t c_ispeed;
	speed_t c_ospeed;
};

#define ktou(_u, _k) do { \
	(_u).c_iflag = (_k).c_iflag; \
	(_u).c_oflag = (_k).c_oflag; \
	(_u).c_cflag = (_k).c_cflag; \
	(_u).c_lflag = (_k).c_lflag; \
	memcpy((_u).c_cc, (_k).c_cc, MINCCS); \
} while (0)
	/* and the speeds */

#define utok(_k, _u) do { \
	(_k).c_iflag = (_u).c_iflag; \
	(_k).c_oflag = (_u).c_oflag; \
	(_k).c_cflag = (_u).c_cflag; \
	(_k).c_lflag = (_u).c_lflag; \
	(_k).c_line = 0; \
	memcpy((_k).c_cc, (_u).c_cc, MINCCS); \
} while (0)
	/* and the speeds */

#else
#define kernel_termios termios
#define ktou(_u, _k) (memcpy(_u, _k, sizeof(_u))
#define utok(_k, _u) (memcpy(_k, _u, sizeof(_u))
#endif

#endif
