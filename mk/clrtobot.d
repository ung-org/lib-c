libcurses_X.4: libcurses.a(clrtobot.o)
libcurses.a(clrtobot.o): $(OBJDIR)/clrtobot.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/clrtobot.o: src/curses/clrtobot.c
$(OBJDIR)/clrtobot.o: src/curses/_curses.h
$(OBJDIR)/clrtobot.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/clrtobot.c
