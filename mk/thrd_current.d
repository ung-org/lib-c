libc_C.201112: libc.a(thrd_current.o)
libc.a(thrd_current.o): $(OBJDIR)/thrd_current.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/thrd_current.o: src/threads/thrd_current.c
$(OBJDIR)/thrd_current.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/threads/thrd_current.c
