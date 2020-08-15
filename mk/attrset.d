libcurses_X.4: libcurses.a(attrset.o)
libcurses.a(attrset.o): $(OBJDIR)/attrset.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/attrset.o: src/curses/attrset.c
$(OBJDIR)/attrset.o: src/curses/_curses.h
$(OBJDIR)/attrset.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/attrset.c
