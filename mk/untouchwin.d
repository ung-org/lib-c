libcurses_X.400: libcurses.a(untouchwin.o)
libcurses.a(untouchwin.o): $(OBJDIR)/untouchwin.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/untouchwin.o: src/curses/untouchwin.c
$(OBJDIR)/untouchwin.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/untouchwin.c
