libc_C.0: libc.a(atomic_compare_exchange_weak.o)
libc.a(atomic_compare_exchange_weak.o): $(OBJDIR)/atomic_compare_exchange_weak.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/atomic_compare_exchange_weak.o: src/stdatomic/atomic_compare_exchange_weak.c
$(OBJDIR)/atomic_compare_exchange_weak.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/stdatomic/atomic_compare_exchange_weak.c
