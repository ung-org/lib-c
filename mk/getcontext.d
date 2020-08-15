libc_X.400: libc.a(getcontext.o)
libc.a(getcontext.o): $(OBJDIR)/getcontext.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/getcontext.o: src/ucontext/getcontext.c
$(OBJDIR)/getcontext.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/ucontext/getcontext.c
