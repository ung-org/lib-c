libc_C.1: libc.a(signal.o)
libc.a(signal.o): $(OBJDIR)/signal.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/signal.o: src/signal/signal.c
$(OBJDIR)/signal.o: src/signal/sigset_t.c
$(OBJDIR)/signal.o: src/signal/struct_sigaction.c
$(OBJDIR)/signal.o: 
$(OBJDIR)/signal.o: 
$(OBJDIR)/signal.o: 
$(OBJDIR)/signal.o: 
$(OBJDIR)/signal.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/signal/signal.c
