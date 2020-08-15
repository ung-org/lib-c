libcurses_X.400: libcurses.a(timeout.o)
libcurses.a(timeout.o): $(OBJDIR)/timeout.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/timeout.o: src/curses/timeout.c
$(OBJDIR)/timeout.o: src/curses/_curses.h
$(OBJDIR)/timeout.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/timeout.c
