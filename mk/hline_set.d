libcurses_X.400: libcurses.a(hline_set.o)
libcurses.a(hline_set.o): $(OBJDIR)/hline_set.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/hline_set.o: src/curses/hline_set.c
$(OBJDIR)/hline_set.o: src/curses/_curses.h
$(OBJDIR)/hline_set.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/hline_set.c
