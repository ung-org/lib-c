libcurses_X.400: libcurses.a(in_wchnstr.o)
libcurses.a(in_wchnstr.o): $(OBJDIR)/in_wchnstr.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/in_wchnstr.o: src/curses/in_wchnstr.c
$(OBJDIR)/in_wchnstr.o: src/curses/_curses.h
$(OBJDIR)/in_wchnstr.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/in_wchnstr.c
