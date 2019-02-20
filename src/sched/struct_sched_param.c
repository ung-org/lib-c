#include <sched.h>

struct sched_param {
	int sched_priority;
	#if defined _POSIX_SS || defined _POSIX_TSP
	int sched_ss_low_priority;
	struct timespec sched_ss_repl_period;
	struct timespec sched_ss_init_budget;
	int sched_ss_max_repl;
	#endif
};

/*
POSIX(199309)
*/
