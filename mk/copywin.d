libcurses_X.400: libcurses.a(copywin.o)
libcurses.a(copywin.o): $(OBJDIR)/copywin.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/copywin.o: src/curses/copywin.c
$(OBJDIR)/copywin.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/copywin.c
