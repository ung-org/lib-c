libcurses_X.4: libcurses.a(delwin.o)
libcurses.a(delwin.o): $(OBJDIR)/delwin.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/delwin.o: src/curses/delwin.c
$(OBJDIR)/delwin.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/delwin.c
