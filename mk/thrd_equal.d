libc_C.201112: libc.a(thrd_equal.o)
libc.a(thrd_equal.o): $(OBJDIR)/thrd_equal.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/thrd_equal.o: src/threads/thrd_equal.c
$(OBJDIR)/thrd_equal.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/threads/thrd_equal.c
