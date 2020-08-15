libcurses_X.400: libcurses.a(derwin.o)
libcurses.a(derwin.o): $(OBJDIR)/derwin.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/derwin.o: src/curses/derwin.c
$(OBJDIR)/derwin.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/derwin.c
