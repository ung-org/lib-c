libcurses_X.4: libcurses.a(touchwin.o)
libcurses.a(touchwin.o): $(OBJDIR)/touchwin.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/touchwin.o: src/curses/touchwin.c
$(OBJDIR)/touchwin.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/touchwin.c
