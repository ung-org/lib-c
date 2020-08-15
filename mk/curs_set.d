libcurses_X.400: libcurses.a(curs_set.o)
libcurses.a(curs_set.o): $(OBJDIR)/curs_set.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/curs_set.o: src/curses/curs_set.c
$(OBJDIR)/curs_set.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/curs_set.c
