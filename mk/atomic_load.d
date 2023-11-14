libc_C.0: libc.a(atomic_load.o)
libc.a(atomic_load.o): $(OBJDIR)/atomic_load.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/atomic_load.o: src/stdatomic/atomic_load.c
$(OBJDIR)/atomic_load.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/stdatomic/atomic_load.c
