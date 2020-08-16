libc_C.1: libc.a(signal.o)
libc.a(signal.o): $(OBJDIR)/signal.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/signal.o: src/signal/signal.c
$(OBJDIR)/signal.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/signal/signal.c
