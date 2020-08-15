libc_X.400: libc.a(sigaltstack.o)
libc.a(sigaltstack.o): $(OBJDIR)/sigaltstack.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/sigaltstack.o: src/signal/sigaltstack.c
$(OBJDIR)/sigaltstack.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/signal/sigaltstack.c
