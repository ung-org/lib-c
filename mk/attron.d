libcurses_X.4: libcurses.a(attron.o)
libcurses.a(attron.o): $(OBJDIR)/attron.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/attron.o: src/curses/attron.c
$(OBJDIR)/attron.o: src/curses/_curses.h
$(OBJDIR)/attron.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/attron.c
