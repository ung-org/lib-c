libcurses_X.4: libcurses.a(curscr.o)
libcurses.a(curscr.o): $(OBJDIR)/curscr.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/curscr.o: src/curses/curscr.c
$(OBJDIR)/curscr.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/curscr.c
