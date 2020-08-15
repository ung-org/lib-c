libcurses_X.400: libcurses.a(echo_wchar.o)
libcurses.a(echo_wchar.o): $(OBJDIR)/echo_wchar.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/echo_wchar.o: src/curses/echo_wchar.c
$(OBJDIR)/echo_wchar.o: src/curses/_curses.h
$(OBJDIR)/echo_wchar.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/echo_wchar.c
