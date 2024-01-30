libc_C.0: libc.a(atomic_flag_clear.o)
libc.a(atomic_flag_clear.o): $(OBJDIR)/atomic_flag_clear.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/atomic_flag_clear.o: src/stdatomic/atomic_flag_clear.c
$(OBJDIR)/atomic_flag_clear.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/stdatomic/atomic_flag_clear.c
