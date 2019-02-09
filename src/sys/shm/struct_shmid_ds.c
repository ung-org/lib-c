#include <sys/shm.h>

struct shmid_ds {
	struct ipc_perm shm_perm;
	size_t shm_segsz;
	pid_t shm_lpid;
	pid_t shm_cpid;
	shmatt_t shm_nattach;
	time_t shm_atime;
	time_t shm_dtime;
	time_t shm_ctime;
};

/*
XOPEN(4)
*/
