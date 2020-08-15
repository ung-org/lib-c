libcurses_X.400: libcurses.a(in_wchstr.o)
libcurses.a(in_wchstr.o): $(OBJDIR)/in_wchstr.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/in_wchstr.o: src/curses/in_wchstr.c
$(OBJDIR)/in_wchstr.o: src/curses/_curses.h
$(OBJDIR)/in_wchstr.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/in_wchstr.c
