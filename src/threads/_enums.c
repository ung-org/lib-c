enum {
	mtx_plain	= 1 << 0,
	mtx_recursive	= 1 << 1,
	mtx_timed	= 1 << 2,
};

enum {
	mtx_timedout	= 1 << 3
};

enum {
	thrd_success	= 0,
	thrd_busy	= 1,
	thrd_error	= 2,
	thrd_nomem	= 3,
};
