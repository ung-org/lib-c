libc_X.400: libc.a(sigstack.o)
libc.a(sigstack.o): $(OBJDIR)/sigstack.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/sigstack.o: src/signal/sigstack.c
$(OBJDIR)/sigstack.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/signal/sigstack.c
