libc_X.400: libc.a(setcontext.o)
libc.a(setcontext.o): $(OBJDIR)/setcontext.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/setcontext.o: src/ucontext/setcontext.c
$(OBJDIR)/setcontext.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/ucontext/setcontext.c
