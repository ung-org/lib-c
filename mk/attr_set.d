libcurses_X.400: libcurses.a(attr_set.o)
libcurses.a(attr_set.o): $(OBJDIR)/attr_set.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/attr_set.o: src/curses/attr_set.c
$(OBJDIR)/attr_set.o: src/curses/_curses.h
$(OBJDIR)/attr_set.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/attr_set.c
