libc_C.0: libc.a(atomic_compare_exchange_strong.o)
libc.a(atomic_compare_exchange_strong.o): $(OBJDIR)/atomic_compare_exchange_strong.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/atomic_compare_exchange_strong.o: src/stdatomic/atomic_compare_exchange_strong.c
$(OBJDIR)/atomic_compare_exchange_strong.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/stdatomic/atomic_compare_exchange_strong.c
