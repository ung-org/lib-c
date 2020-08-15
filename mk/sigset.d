libc_X.400: libc.a(sigset.o)
libc.a(sigset.o): $(OBJDIR)/sigset.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/sigset.o: src/signal/sigset.c
$(OBJDIR)/sigset.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/signal/sigset.c
