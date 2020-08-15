libc_X.400: libc.a(sigmask.o)
libc.a(sigmask.o): $(OBJDIR)/sigmask.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/sigmask.o: src/signal/sigmask.c
$(OBJDIR)/sigmask.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/signal/sigmask.c
