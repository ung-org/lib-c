libcurses_X.400: libcurses.a(border.o)
libcurses.a(border.o): $(OBJDIR)/border.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/border.o: src/curses/border.c
$(OBJDIR)/border.o: src/curses/_curses.h
$(OBJDIR)/border.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/border.c
