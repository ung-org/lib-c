libc_P.1: libc.a(tcgetattr.o)
libc.a(tcgetattr.o): $(OBJDIR)/tcgetattr.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/tcgetattr.o: src/termios/tcgetattr.c
$(OBJDIR)/tcgetattr.o: src/termios/_termios.h
$(OBJDIR)/tcgetattr.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/termios/tcgetattr.c
