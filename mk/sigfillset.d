libc_P.1: libc.a(sigfillset.o)
libc.a(sigfillset.o): $(OBJDIR)/sigfillset.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/sigfillset.o: src/signal/sigfillset.c
$(OBJDIR)/sigfillset.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/signal/sigfillset.c
