libcurses_X.400: libcurses.a(attr_on.o)
libcurses.a(attr_on.o): $(OBJDIR)/attr_on.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/attr_on.o: src/curses/attr_on.c
$(OBJDIR)/attr_on.o: src/curses/_curses.h
$(OBJDIR)/attr_on.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/attr_on.c
