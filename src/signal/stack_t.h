#include <signal.h>

typedef struct {
	void *ss_sp;	/* Stack base or pointer */
	size_t ss_size;	/* Stack size */
	int ss_flags;	/* Flags */
} stack_t;

/*
XOPEN(400)
POSIX(200809)
*/
