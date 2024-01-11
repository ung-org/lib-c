#ifndef SIGNAL__SIGNAL_H
#define SIGNAL__SIGNAL_H

#include <signal.h>

#define NSIGNALS 256

typedef void (*handler)(int);

extern struct __signal {
	int current;
	handler handlers[NSIGNALS];
} __signal;

void __signal_handler(int);

#endif
