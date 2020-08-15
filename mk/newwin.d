libcurses_X.4: libcurses.a(newwin.o)
libcurses.a(newwin.o): $(OBJDIR)/newwin.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/newwin.o: src/curses/newwin.c
$(OBJDIR)/newwin.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/newwin.c
