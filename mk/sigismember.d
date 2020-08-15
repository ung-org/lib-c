libc_P.1: libc.a(sigismember.o)
libc.a(sigismember.o): $(OBJDIR)/sigismember.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/sigismember.o: src/signal/sigismember.c
$(OBJDIR)/sigismember.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/signal/sigismember.c
