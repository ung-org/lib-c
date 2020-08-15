libc_X.400: libc.a(siginterrupt.o)
libc.a(siginterrupt.o): $(OBJDIR)/siginterrupt.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/siginterrupt.o: src/signal/siginterrupt.c
$(OBJDIR)/siginterrupt.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/signal/siginterrupt.c
