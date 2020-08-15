libcurses_X.4: libcurses.a(mvscanw.o)
libcurses.a(mvscanw.o): $(OBJDIR)/mvscanw.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/mvscanw.o: src/curses/mvscanw.c
$(OBJDIR)/mvscanw.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/mvscanw.c
