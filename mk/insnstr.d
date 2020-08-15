libcurses_X.400: libcurses.a(insnstr.o)
libcurses.a(insnstr.o): $(OBJDIR)/insnstr.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/insnstr.o: src/curses/insnstr.c
$(OBJDIR)/insnstr.o: src/curses/_curses.h
$(OBJDIR)/insnstr.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/insnstr.c
