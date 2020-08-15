libcurses_X.4: libcurses.a(stdscr.o)
libcurses.a(stdscr.o): $(OBJDIR)/stdscr.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/stdscr.o: src/curses/stdscr.c
$(OBJDIR)/stdscr.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/stdscr.c
