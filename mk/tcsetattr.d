libc_P.1: libc.a(tcsetattr.o)
libc.a(tcsetattr.o): $(OBJDIR)/tcsetattr.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/tcsetattr.o: src/termios/tcsetattr.c
$(OBJDIR)/tcsetattr.o: src/termios/_termios.h
$(OBJDIR)/tcsetattr.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/termios/tcsetattr.c
