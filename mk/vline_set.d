libcurses_X.400: libcurses.a(vline_set.o)
libcurses.a(vline_set.o): $(OBJDIR)/vline_set.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/vline_set.o: src/curses/vline_set.c
$(OBJDIR)/vline_set.o: src/curses/_curses.h
$(OBJDIR)/vline_set.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/vline_set.c
