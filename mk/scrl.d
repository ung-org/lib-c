libcurses_X.400: libcurses.a(scrl.o)
libcurses.a(scrl.o): $(OBJDIR)/scrl.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/scrl.o: src/curses/scrl.c
$(OBJDIR)/scrl.o: src/curses/_curses.h
$(OBJDIR)/scrl.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/scrl.c
