libcurses_X.400: libcurses.a(inwstr.o)
libcurses.a(inwstr.o): $(OBJDIR)/inwstr.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/inwstr.o: src/curses/inwstr.c
$(OBJDIR)/inwstr.o: src/curses/_curses.h
$(OBJDIR)/inwstr.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/inwstr.c
