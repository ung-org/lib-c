libcurses_X.4: libcurses.a(keypad.o)
libcurses.a(keypad.o): $(OBJDIR)/keypad.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/keypad.o: src/curses/keypad.c
$(OBJDIR)/keypad.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/keypad.c
