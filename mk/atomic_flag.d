libc_C.0: libc.a(atomic_flag.o)
libc.a(atomic_flag.o): $(OBJDIR)/atomic_flag.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/atomic_flag.o: src/stdatomic/atomic_flag.c
$(OBJDIR)/atomic_flag.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/stdatomic/atomic_flag.c
