libc_C.0: libc.a(atomic_is_lock_free.o)
libc.a(atomic_is_lock_free.o): $(OBJDIR)/atomic_is_lock_free.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/atomic_is_lock_free.o: src/stdatomic/atomic_is_lock_free.c
$(OBJDIR)/atomic_is_lock_free.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/stdatomic/atomic_is_lock_free.c
