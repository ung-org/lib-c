libc_C.0: libc.a(atomic_signal_fence.o)
libc.a(atomic_signal_fence.o): $(OBJDIR)/atomic_signal_fence.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/atomic_signal_fence.o: src/stdatomic/atomic_signal_fence.c
$(OBJDIR)/atomic_signal_fence.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/stdatomic/atomic_signal_fence.c
