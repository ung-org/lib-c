libcurses_X.4: libcurses.a(deleteln.o)
libcurses.a(deleteln.o): $(OBJDIR)/deleteln.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/deleteln.o: src/curses/deleteln.c
$(OBJDIR)/deleteln.o: src/curses/_curses.h
$(OBJDIR)/deleteln.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/deleteln.c
