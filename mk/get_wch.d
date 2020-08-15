libcurses_X.400: libcurses.a(get_wch.o)
libcurses.a(get_wch.o): $(OBJDIR)/get_wch.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/get_wch.o: src/curses/get_wch.c
$(OBJDIR)/get_wch.o: src/curses/_curses.h
$(OBJDIR)/get_wch.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/get_wch.c
