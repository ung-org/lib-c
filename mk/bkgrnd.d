libcurses_X.400: libcurses.a(bkgrnd.o)
libcurses.a(bkgrnd.o): $(OBJDIR)/bkgrnd.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/bkgrnd.o: src/curses/bkgrnd.c
$(OBJDIR)/bkgrnd.o: src/curses/_curses.h
$(OBJDIR)/bkgrnd.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/bkgrnd.c
