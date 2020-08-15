libcurses_X.400: libcurses.a(slk_noutrefresh.o)
libcurses.a(slk_noutrefresh.o): $(OBJDIR)/slk_noutrefresh.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/slk_noutrefresh.o: src/curses/slk_noutrefresh.c
$(OBJDIR)/slk_noutrefresh.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/slk_noutrefresh.c
