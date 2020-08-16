#include <sys/sem.h>

struct semid_ds {
	struct ipc_perm sem_perm;
	unsigned short sem_nsems;
	time_t sem_otime;
	time_t sem_ctime;
};

/*
XOPEN(4)
*/
