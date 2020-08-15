libcurses_X.400: libcurses.a(add_wch.o)
libcurses.a(add_wch.o): $(OBJDIR)/add_wch.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/add_wch.o: src/curses/add_wch.c
$(OBJDIR)/add_wch.o: src/curses/_curses.h
$(OBJDIR)/add_wch.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/add_wch.c
