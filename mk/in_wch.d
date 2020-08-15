libcurses_X.400: libcurses.a(in_wch.o)
libcurses.a(in_wch.o): $(OBJDIR)/in_wch.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/in_wch.o: src/curses/in_wch.c
$(OBJDIR)/in_wch.o: src/curses/_curses.h
$(OBJDIR)/in_wch.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/in_wch.c
