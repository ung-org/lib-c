libcurses_X.400: libcurses.a(get_wstr.o)
libcurses.a(get_wstr.o): $(OBJDIR)/get_wstr.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/get_wstr.o: src/curses/get_wstr.c
$(OBJDIR)/get_wstr.o: src/curses/_curses.h
$(OBJDIR)/get_wstr.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/get_wstr.c
