libcurses_X.400: libcurses.a(inchnstr.o)
libcurses.a(inchnstr.o): $(OBJDIR)/inchnstr.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/inchnstr.o: src/curses/inchnstr.c
$(OBJDIR)/inchnstr.o: src/curses/_curses.h
$(OBJDIR)/inchnstr.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/inchnstr.c
