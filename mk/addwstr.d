libcurses_X.400: libcurses.a(addwstr.o)
libcurses.a(addwstr.o): $(OBJDIR)/addwstr.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/addwstr.o: src/curses/addwstr.c
$(OBJDIR)/addwstr.o: src/curses/_curses.h
$(OBJDIR)/addwstr.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/addwstr.c
