libcurses_X.400: libcurses.a(addnwstr.o)
libcurses.a(addnwstr.o): $(OBJDIR)/addnwstr.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/addnwstr.o: src/curses/addnwstr.c
$(OBJDIR)/addnwstr.o: src/curses/_curses.h
$(OBJDIR)/addnwstr.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/addnwstr.c
