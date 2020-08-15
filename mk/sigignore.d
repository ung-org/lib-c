libc_X.400: libc.a(sigignore.o)
libc.a(sigignore.o): $(OBJDIR)/sigignore.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/sigignore.o: src/signal/sigignore.c
$(OBJDIR)/sigignore.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/signal/sigignore.c
