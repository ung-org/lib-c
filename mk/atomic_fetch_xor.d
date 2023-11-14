libc_C.0: libc.a(atomic_fetch_xor.o)
libc.a(atomic_fetch_xor.o): $(OBJDIR)/atomic_fetch_xor.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/atomic_fetch_xor.o: src/stdatomic/atomic_fetch_xor.c
$(OBJDIR)/atomic_fetch_xor.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/stdatomic/atomic_fetch_xor.c
