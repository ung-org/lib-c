libcurses_X.400: libcurses.a(redrawwin.o)
libcurses.a(redrawwin.o): $(OBJDIR)/redrawwin.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/redrawwin.o: src/curses/redrawwin.c
$(OBJDIR)/redrawwin.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/redrawwin.c
