libc_P.1: libc.a(sigdelset.o)
libc.a(sigdelset.o): $(OBJDIR)/sigdelset.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/sigdelset.o: src/signal/sigdelset.c
$(OBJDIR)/sigdelset.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/signal/sigdelset.c
