libcurses_X.4: libcurses.a(printw.o)
libcurses.a(printw.o): $(OBJDIR)/printw.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/printw.o: src/curses/printw.c
$(OBJDIR)/printw.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/printw.c
