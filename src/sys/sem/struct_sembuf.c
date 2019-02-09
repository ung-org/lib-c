#include <sys/sem.h>

struct sembuf {
	unsigned short sem_num;
	short sem_op;
	short sem_flg;
};

/*
XOPEN(4)
*/
