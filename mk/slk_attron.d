libcurses_X.400: libcurses.a(slk_attron.o)
libcurses.a(slk_attron.o): $(OBJDIR)/slk_attron.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/slk_attron.o: src/curses/slk_attron.c
$(OBJDIR)/slk_attron.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/slk_attron.c
