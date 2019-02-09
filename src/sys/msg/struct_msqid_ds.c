#include <sys/msg.h>

struct msqid_ds {
	struct ipc_perm msg_perm;	/* operation permissions */
	msgqnum_t msg_qnum;		/* # messages on queue */
	msglen_t msg_qbytes;		/* Max # bytes allowed on queue */
	pid_t msg_lspid;		/* PID of last msgsnd() */
	pid_t msg_lrpid;		/* PID of last msgrcg() */
	time_t msg_stime;		/* time of last msgsnd() */
	time_t msg_rtime;		/* time of last msgrcv() */
	time_t msg_ctime;		/* time of last change */
};

/*
XOPEN(4)
*/
