libcurses_X.4: libcurses.a(standout.o)
libcurses.a(standout.o): $(OBJDIR)/standout.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/standout.o: src/curses/standout.c
$(OBJDIR)/standout.o: src/curses/_curses.h
$(OBJDIR)/standout.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/standout.c
