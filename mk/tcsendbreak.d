libc_P.1: libc.a(tcsendbreak.o)
libc.a(tcsendbreak.o): $(OBJDIR)/tcsendbreak.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/tcsendbreak.o: src/termios/tcsendbreak.c
$(OBJDIR)/tcsendbreak.o: src/termios/_termios.h
$(OBJDIR)/tcsendbreak.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/termios/tcsendbreak.c
