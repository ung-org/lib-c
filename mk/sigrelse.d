libc_X.400: libc.a(sigrelse.o)
libc.a(sigrelse.o): $(OBJDIR)/sigrelse.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/sigrelse.o: src/signal/sigrelse.c
$(OBJDIR)/sigrelse.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/signal/sigrelse.c
