libcurses_X.4: libcurses.a(COLS.o)
libcurses.a(COLS.o): $(OBJDIR)/COLS.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/COLS.o: src/curses/COLS.c
$(OBJDIR)/COLS.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/COLS.c
