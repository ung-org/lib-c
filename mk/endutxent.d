libc_X.400: libc.a(endutxent.o)
libc.a(endutxent.o): $(OBJDIR)/endutxent.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/endutxent.o: src/utmpx/endutxent.c
$(OBJDIR)/endutxent.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/utmpx/endutxent.c
