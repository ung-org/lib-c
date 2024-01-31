libc_C.201112: libc.a(atomic_exchange_explicit.o)
libc.a(atomic_exchange_explicit.o): $(OBJDIR)/atomic_exchange_explicit.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/atomic_exchange_explicit.o: src/stdatomic/atomic_exchange_explicit.c
$(OBJDIR)/atomic_exchange_explicit.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/stdatomic/atomic_exchange_explicit.c
