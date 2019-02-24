.POSIX:
libc.a: \
	$(libc_C_1_OBJS) \
	$(libc_C_199409_OBJS) \
	$(libc_C_199901_OBJS) \
	$(libc_POSIX_1_OBJS) \
	$(libc_POSIX_199309_OBJS) \
	$(libc_POSIX_2_OBJS) \
	$(libc_POSIX_200112_OBJS) \
	$(libc_POSIX_200809_OBJS) \
	$(libc_XOPEN_4_OBJS) \
	$(libc_XOPEN_400_OBJS)