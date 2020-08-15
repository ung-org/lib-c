libcurses_X.4: libcurses.a(erase.o)
libcurses.a(erase.o): $(OBJDIR)/erase.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/erase.o: src/curses/erase.c
$(OBJDIR)/erase.o: src/curses/_curses.h
$(OBJDIR)/erase.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/erase.c
