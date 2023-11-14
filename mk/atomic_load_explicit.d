libc_C.0: libc.a(atomic_load_explicit.o)
libc.a(atomic_load_explicit.o): $(OBJDIR)/atomic_load_explicit.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/atomic_load_explicit.o: src/stdatomic/atomic_load_explicit.c
$(OBJDIR)/atomic_load_explicit.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/stdatomic/atomic_load_explicit.c
