libc_C.201112: libc.a(atomic_fetch_add.o)
libc.a(atomic_fetch_add.o): $(OBJDIR)/atomic_fetch_add.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/atomic_fetch_add.o: src/stdatomic/atomic_fetch_add.c
$(OBJDIR)/atomic_fetch_add.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/stdatomic/atomic_fetch_add.c
