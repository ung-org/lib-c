libcurses_X.400: libcurses.a(syncok.o)
libcurses.a(syncok.o): $(OBJDIR)/syncok.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/syncok.o: src/curses/syncok.c
$(OBJDIR)/syncok.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/syncok.c
