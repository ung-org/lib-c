libc_C.0: libc.a(atomic_compare_exchange_strong_explicit.o)
libc.a(atomic_compare_exchange_strong_explicit.o): $(OBJDIR)/atomic_compare_exchange_strong_explicit.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/atomic_compare_exchange_strong_explicit.o: src/stdatomic/atomic_compare_exchange_strong_explicit.c
$(OBJDIR)/atomic_compare_exchange_strong_explicit.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/stdatomic/atomic_compare_exchange_strong_explicit.c
