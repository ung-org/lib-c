libc_C.201112: libc.a(atomic_flag_clear_explicit.o)
libc.a(atomic_flag_clear_explicit.o): $(OBJDIR)/atomic_flag_clear_explicit.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/atomic_flag_clear_explicit.o: src/stdatomic/atomic_flag_clear_explicit.c
$(OBJDIR)/atomic_flag_clear_explicit.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/stdatomic/atomic_flag_clear_explicit.c
