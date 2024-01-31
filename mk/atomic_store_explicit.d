libc_C.201112: libc.a(atomic_store_explicit.o)
libc.a(atomic_store_explicit.o): $(OBJDIR)/atomic_store_explicit.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/atomic_store_explicit.o: src/stdatomic/atomic_store_explicit.c
$(OBJDIR)/atomic_store_explicit.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/stdatomic/atomic_store_explicit.c
