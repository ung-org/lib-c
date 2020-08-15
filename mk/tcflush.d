libc_P.1: libc.a(tcflush.o)
libc.a(tcflush.o): $(OBJDIR)/tcflush.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/tcflush.o: src/termios/tcflush.c
$(OBJDIR)/tcflush.o: src/termios/_termios.h
$(OBJDIR)/tcflush.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/termios/tcflush.c
