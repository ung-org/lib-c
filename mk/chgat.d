libcurses_X.400: libcurses.a(chgat.o)
libcurses.a(chgat.o): $(OBJDIR)/chgat.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/chgat.o: src/curses/chgat.c
$(OBJDIR)/chgat.o: src/curses/_curses.h
$(OBJDIR)/chgat.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/chgat.c
