libc_X.400: libc.a(swapcontext.o)
libc.a(swapcontext.o): $(OBJDIR)/swapcontext.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/swapcontext.o: src/ucontext/swapcontext.c
$(OBJDIR)/swapcontext.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/ucontext/swapcontext.c
