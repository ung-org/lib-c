libc_P.200809: libc.a(tcgetsid.o)
libc_X.400: libc.a(tcgetsid.o)
libc.a(tcgetsid.o): $(OBJDIR)/tcgetsid.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/tcgetsid.o: src/termios/tcgetsid.c
$(OBJDIR)/tcgetsid.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/termios/tcgetsid.c
