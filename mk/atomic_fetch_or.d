libc_C.201112: libc.a(atomic_fetch_or.o)
libc.a(atomic_fetch_or.o): $(OBJDIR)/atomic_fetch_or.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/atomic_fetch_or.o: src/stdatomic/atomic_fetch_or.c
$(OBJDIR)/atomic_fetch_or.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/stdatomic/atomic_fetch_or.c
