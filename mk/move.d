libcurses_X.4: libcurses.a(move.o)
libcurses.a(move.o): $(OBJDIR)/move.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/move.o: src/curses/move.c
$(OBJDIR)/move.o: src/curses/_curses.h
$(OBJDIR)/move.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/move.c
