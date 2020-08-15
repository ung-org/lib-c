libc_P.1: libc.a(tcdrain.o)
libc.a(tcdrain.o): $(OBJDIR)/tcdrain.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/tcdrain.o: src/termios/tcdrain.c
$(OBJDIR)/tcdrain.o: src/termios/_termios.h
$(OBJDIR)/tcdrain.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/termios/tcdrain.c
