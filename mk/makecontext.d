libc_X.400: libc.a(makecontext.o)
libc.a(makecontext.o): $(OBJDIR)/makecontext.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/makecontext.o: src/ucontext/makecontext.c
$(OBJDIR)/makecontext.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/ucontext/makecontext.c
