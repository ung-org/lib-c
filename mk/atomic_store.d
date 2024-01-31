libc_C.201112: libc.a(atomic_store.o)
libc.a(atomic_store.o): $(OBJDIR)/atomic_store.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/atomic_store.o: src/stdatomic/atomic_store.c
$(OBJDIR)/atomic_store.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/stdatomic/atomic_store.c
