libc_X.400: libc.a(bsd_signal.o)
libc.a(bsd_signal.o): $(OBJDIR)/bsd_signal.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/bsd_signal.o: src/signal/bsd_signal.c
$(OBJDIR)/bsd_signal.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/signal/bsd_signal.c
