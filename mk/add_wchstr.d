libcurses_X.400: libcurses.a(add_wchstr.o)
libcurses.a(add_wchstr.o): $(OBJDIR)/add_wchstr.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/add_wchstr.o: src/curses/add_wchstr.c
$(OBJDIR)/add_wchstr.o: src/curses/_curses.h
$(OBJDIR)/add_wchstr.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/add_wchstr.c
