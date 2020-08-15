libcurses_X.400: libcurses.a(vw_printw.o)
libcurses.a(vw_printw.o): $(OBJDIR)/vw_printw.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/vw_printw.o: src/curses/vw_printw.c
$(OBJDIR)/vw_printw.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/vw_printw.c
