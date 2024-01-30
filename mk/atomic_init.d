libc_C.0: libc.a(atomic_init.o)
libc.a(atomic_init.o): $(OBJDIR)/atomic_init.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/atomic_init.o: src/stdatomic/atomic_init.c
$(OBJDIR)/atomic_init.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/stdatomic/atomic_init.c
