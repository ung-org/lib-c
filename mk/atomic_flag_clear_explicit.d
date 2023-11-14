libc_C.0: libc.a(atomic_flag_clear_explicit.o)
libc.a(atomic_flag_clear_explicit.o): $(OBJDIR)/atomic_flag_clear_explicit.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/atomic_flag_clear_explicit.o: src/stdatomic/atomic_flag_clear_explicit.c
$(OBJDIR)/atomic_flag_clear_explicit.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/stdatomic/atomic_flag_clear_explicit.c
