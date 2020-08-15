libcurses_X.4: libcurses.a(clear.o)
libcurses.a(clear.o): $(OBJDIR)/clear.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/clear.o: src/curses/clear.c
$(OBJDIR)/clear.o: src/curses/_curses.h
$(OBJDIR)/clear.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/clear.c
