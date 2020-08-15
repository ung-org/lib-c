libcurses_X.4: libcurses.a(mvwprintw.o)
libcurses.a(mvwprintw.o): $(OBJDIR)/mvwprintw.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/mvwprintw.o: src/curses/mvwprintw.c
$(OBJDIR)/mvwprintw.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/mvwprintw.c
