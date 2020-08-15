libcurses_X.4: libcurses.a(getnstr.o)
libcurses.a(getnstr.o): $(OBJDIR)/getnstr.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/getnstr.o: src/curses/getnstr.c
$(OBJDIR)/getnstr.o: src/curses/_curses.h
$(OBJDIR)/getnstr.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/getnstr.c
