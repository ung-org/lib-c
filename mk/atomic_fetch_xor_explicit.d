libc_C.201112: libc.a(atomic_fetch_xor_explicit.o)
libc.a(atomic_fetch_xor_explicit.o): $(OBJDIR)/atomic_fetch_xor_explicit.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/atomic_fetch_xor_explicit.o: src/stdatomic/atomic_fetch_xor_explicit.c
$(OBJDIR)/atomic_fetch_xor_explicit.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/stdatomic/atomic_fetch_xor_explicit.c
