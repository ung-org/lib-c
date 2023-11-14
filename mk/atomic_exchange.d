libc_C.0: libc.a(atomic_exchange.o)
libc.a(atomic_exchange.o): $(OBJDIR)/atomic_exchange.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/atomic_exchange.o: src/stdatomic/atomic_exchange.c
$(OBJDIR)/atomic_exchange.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/stdatomic/atomic_exchange.c
