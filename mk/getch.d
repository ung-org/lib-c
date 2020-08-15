libcurses_X.4: libcurses.a(getch.o)
libcurses.a(getch.o): $(OBJDIR)/getch.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/getch.o: src/curses/getch.c
$(OBJDIR)/getch.o: src/curses/_curses.h
$(OBJDIR)/getch.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/getch.c
