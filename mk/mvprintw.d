libcurses_X.4: libcurses.a(mvprintw.o)
libcurses.a(mvprintw.o): $(OBJDIR)/mvprintw.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/mvprintw.o: src/curses/mvprintw.c
$(OBJDIR)/mvprintw.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/mvprintw.c
