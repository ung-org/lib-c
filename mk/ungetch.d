libcurses_X.400: libcurses.a(ungetch.o)
libcurses.a(ungetch.o): $(OBJDIR)/ungetch.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/ungetch.o: src/curses/ungetch.c
$(OBJDIR)/ungetch.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/ungetch.c
