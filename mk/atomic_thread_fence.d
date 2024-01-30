libc_C.0: libc.a(atomic_thread_fence.o)
libc.a(atomic_thread_fence.o): $(OBJDIR)/atomic_thread_fence.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/atomic_thread_fence.o: src/stdatomic/atomic_thread_fence.c
$(OBJDIR)/atomic_thread_fence.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/stdatomic/atomic_thread_fence.c
