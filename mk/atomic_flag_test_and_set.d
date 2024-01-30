libc_C.0: libc.a(atomic_flag_test_and_set.o)
libc.a(atomic_flag_test_and_set.o): $(OBJDIR)/atomic_flag_test_and_set.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/atomic_flag_test_and_set.o: src/stdatomic/atomic_flag_test_and_set.c
$(OBJDIR)/atomic_flag_test_and_set.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/stdatomic/atomic_flag_test_and_set.c
