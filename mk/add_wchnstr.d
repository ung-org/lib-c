libcurses_X.4: libcurses.a(add_wchnstr.o)
libcurses.a(add_wchnstr.o): $(OBJDIR)/add_wchnstr.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/add_wchnstr.o: src/curses/add_wchnstr.c
$(OBJDIR)/add_wchnstr.o: src/curses/_curses.h
$(OBJDIR)/add_wchnstr.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/add_wchnstr.c
