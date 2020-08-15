libcurses_X.400: libcurses.a(bkgdset.o)
libcurses.a(bkgdset.o): $(OBJDIR)/bkgdset.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/bkgdset.o: src/curses/bkgdset.c
$(OBJDIR)/bkgdset.o: src/curses/_curses.h
$(OBJDIR)/bkgdset.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/bkgdset.c
