#ifndef SIGNAL__SIGNAL_H
#define SIGNAL__SIGNAL_H

#include <signal.h>

#define NSIGNALS 256

typedef void (*handler)(int);

extern struct __signal_h {
	int current;
	handler handlers[NSIGNALS];
} __signal_h;

void __signal_handler(int);
void __segv(void);

/*
STDC(-1)
*/

#endif
