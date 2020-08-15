libcurses_X.4: libcurses.a(pnoutrefresh.o)
libcurses.a(pnoutrefresh.o): $(OBJDIR)/pnoutrefresh.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/pnoutrefresh.o: src/curses/pnoutrefresh.c
$(OBJDIR)/pnoutrefresh.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/pnoutrefresh.c
