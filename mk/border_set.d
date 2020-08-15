libcurses_X.400: libcurses.a(border_set.o)
libcurses.a(border_set.o): $(OBJDIR)/border_set.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/border_set.o: src/curses/border_set.c
$(OBJDIR)/border_set.o: src/curses/_curses.h
$(OBJDIR)/border_set.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/border_set.c
