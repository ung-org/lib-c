libc_C.201112: libc.a(atomic_fetch_add_explicit.o)
libc.a(atomic_fetch_add_explicit.o): $(OBJDIR)/atomic_fetch_add_explicit.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/atomic_fetch_add_explicit.o: src/stdatomic/atomic_fetch_add_explicit.c
$(OBJDIR)/atomic_fetch_add_explicit.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/stdatomic/atomic_fetch_add_explicit.c
