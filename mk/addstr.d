libcurses_X.400: libcurses.a(addstr.o)
libcurses.a(addstr.o): $(OBJDIR)/addstr.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/addstr.o: src/curses/addstr.c
$(OBJDIR)/addstr.o: src/curses/_curses.h
$(OBJDIR)/addstr.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/addstr.c
