libc_C.0: libc.a(atomic_compare_exchange_weak_explicit.o)
libc.a(atomic_compare_exchange_weak_explicit.o): $(OBJDIR)/atomic_compare_exchange_weak_explicit.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/atomic_compare_exchange_weak_explicit.o: src/stdatomic/atomic_compare_exchange_weak_explicit.c
$(OBJDIR)/atomic_compare_exchange_weak_explicit.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/stdatomic/atomic_compare_exchange_weak_explicit.c
