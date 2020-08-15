libcurses_X.400: libcurses.a(attr_off.o)
libcurses.a(attr_off.o): $(OBJDIR)/attr_off.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/attr_off.o: src/curses/attr_off.c
$(OBJDIR)/attr_off.o: src/curses/_curses.h
$(OBJDIR)/attr_off.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/attr_off.c
