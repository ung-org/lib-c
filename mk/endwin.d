libcurses_X.4: libcurses.a(endwin.o)
libcurses.a(endwin.o): $(OBJDIR)/endwin.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/endwin.o: src/curses/endwin.c
$(OBJDIR)/endwin.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/endwin.c
