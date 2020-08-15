libcurses_X.400: libcurses.a(attr_get.o)
libcurses.a(attr_get.o): $(OBJDIR)/attr_get.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/attr_get.o: src/curses/attr_get.c
$(OBJDIR)/attr_get.o: src/curses/_curses.h
$(OBJDIR)/attr_get.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/attr_get.c
