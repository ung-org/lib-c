libc_C.201112: libc.a(atomic_fetch_sub.o)
libc.a(atomic_fetch_sub.o): $(OBJDIR)/atomic_fetch_sub.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/atomic_fetch_sub.o: src/stdatomic/atomic_fetch_sub.c
$(OBJDIR)/atomic_fetch_sub.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/stdatomic/atomic_fetch_sub.c
