libcurses_X.400: libcurses.a(getwin.o)
libcurses.a(getwin.o): $(OBJDIR)/getwin.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/getwin.o: src/curses/getwin.c
$(OBJDIR)/getwin.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/getwin.c
