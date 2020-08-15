libc_P.1: libc.a(sigset_t.o)
libc.a(sigset_t.o): $(OBJDIR)/sigset_t.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/sigset_t.o: src/signal/sigset_t.c
$(OBJDIR)/sigset_t.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/signal/sigset_t.c
