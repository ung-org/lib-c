libc_C.201112: libc.a(thrd_create.o)
libc.a(thrd_create.o): $(OBJDIR)/thrd_create.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/thrd_create.o: src/threads/thrd_create.c
$(OBJDIR)/thrd_create.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/threads/thrd_create.c
