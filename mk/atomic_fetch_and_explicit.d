libc_C.0: libc.a(atomic_fetch_and_explicit.o)
libc.a(atomic_fetch_and_explicit.o): $(OBJDIR)/atomic_fetch_and_explicit.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/atomic_fetch_and_explicit.o: src/stdatomic/atomic_fetch_and_explicit.c
$(OBJDIR)/atomic_fetch_and_explicit.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/stdatomic/atomic_fetch_and_explicit.c
