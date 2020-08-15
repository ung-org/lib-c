libcurses_X.4: libcurses.a(newpad.o)
libcurses.a(newpad.o): $(OBJDIR)/newpad.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/newpad.o: src/curses/newpad.c
$(OBJDIR)/newpad.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/newpad.c
