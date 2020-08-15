libcurses_X.4: libcurses.a(wprintw.o)
libcurses.a(wprintw.o): $(OBJDIR)/wprintw.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/wprintw.o: src/curses/wprintw.c
$(OBJDIR)/wprintw.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/wprintw.c
