libc_C.201112: libc.a(atomic_flag.o)
libc.a(atomic_flag.o): $(OBJDIR)/atomic_flag.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/atomic_flag.o: src/stdatomic/atomic_flag.c
$(OBJDIR)/atomic_flag.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/stdatomic/atomic_flag.c
