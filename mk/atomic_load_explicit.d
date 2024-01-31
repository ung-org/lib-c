libc_C.201112: libc.a(atomic_load_explicit.o)
libc.a(atomic_load_explicit.o): $(OBJDIR)/atomic_load_explicit.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/atomic_load_explicit.o: src/stdatomic/atomic_load_explicit.c
$(OBJDIR)/atomic_load_explicit.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/stdatomic/atomic_load_explicit.c
