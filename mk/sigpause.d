libc_X.400: libc.a(sigpause.o)
libc.a(sigpause.o): $(OBJDIR)/sigpause.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/sigpause.o: src/signal/sigpause.c
$(OBJDIR)/sigpause.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/signal/sigpause.c
