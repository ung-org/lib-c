libcurses_X.400: libcurses.a(addnstr.o)
libcurses.a(addnstr.o): $(OBJDIR)/addnstr.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/addnstr.o: src/curses/addnstr.c
$(OBJDIR)/addnstr.o: src/curses/_curses.h
$(OBJDIR)/addnstr.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/addnstr.c
