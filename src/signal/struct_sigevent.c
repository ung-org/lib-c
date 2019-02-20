#include <signal.h>

struct sigevent {
	int sigev_notify;
	int sigev_signo;
	union sigval sigev_value;
	void (*sigev_notify_function)(union sigval);
	pthread_attr_t *siegev_notify_attributes;
};

/*
POSIX(199309)
*/
