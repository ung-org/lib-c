libc_C.0: libc.a(atomic_fetch_and.o)
libc.a(atomic_fetch_and.o): $(OBJDIR)/atomic_fetch_and.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/atomic_fetch_and.o: src/stdatomic/atomic_fetch_and.c
$(OBJDIR)/atomic_fetch_and.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/stdatomic/atomic_fetch_and.c
