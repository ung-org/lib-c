enum {
	mtx_plain	= 1 << 0,
	mtx_recursive	= 1 << 1,
	mtx_timed	= 1 << 2,
};

enum {
	thrd_success	= 0,
	thrd_busy	= 1,
	thrd_error	= 2,
	thrd_nomem	= 3,
	thrd_timedout	= 4,
};
