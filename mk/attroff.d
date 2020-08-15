libcurses_X.4: libcurses.a(attroff.o)
libcurses.a(attroff.o): $(OBJDIR)/attroff.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/attroff.o: src/curses/attroff.c
$(OBJDIR)/attroff.o: src/curses/_curses.h
$(OBJDIR)/attroff.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/attroff.c
