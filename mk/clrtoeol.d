libcurses_X.4: libcurses.a(clrtoeol.o)
libcurses.a(clrtoeol.o): $(OBJDIR)/clrtoeol.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/clrtoeol.o: src/curses/clrtoeol.c
$(OBJDIR)/clrtoeol.o: src/curses/_curses.h
$(OBJDIR)/clrtoeol.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/clrtoeol.c
