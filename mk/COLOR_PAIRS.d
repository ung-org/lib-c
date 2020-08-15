libcurses_X.400: libcurses.a(COLOR_PAIRS.o)
libcurses.a(COLOR_PAIRS.o): $(OBJDIR)/COLOR_PAIRS.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/COLOR_PAIRS.o: src/curses/COLOR_PAIRS.c
$(OBJDIR)/COLOR_PAIRS.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/COLOR_PAIRS.c
