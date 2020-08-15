libcurses_X.4: libcurses.a(initscr.o)
libcurses.a(initscr.o): $(OBJDIR)/initscr.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/initscr.o: src/curses/initscr.c
$(OBJDIR)/initscr.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/initscr.c
