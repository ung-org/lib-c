libc_P.1: libc.a(tcflow.o)
libc.a(tcflow.o): $(OBJDIR)/tcflow.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/tcflow.o: src/termios/tcflow.c
$(OBJDIR)/tcflow.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/termios/tcflow.c
