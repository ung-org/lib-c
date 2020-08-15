libcurses_X.400: libcurses.a(bkgd.o)
libcurses.a(bkgd.o): $(OBJDIR)/bkgd.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/bkgd.o: src/curses/bkgd.c
$(OBJDIR)/bkgd.o: src/curses/_curses.h
$(OBJDIR)/bkgd.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/bkgd.c
