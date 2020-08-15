libcurses_X.400: libcurses.a(getbkgrnd.o)
libcurses.a(getbkgrnd.o): $(OBJDIR)/getbkgrnd.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/getbkgrnd.o: src/curses/getbkgrnd.c
$(OBJDIR)/getbkgrnd.o: src/curses/_curses.h
$(OBJDIR)/getbkgrnd.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/getbkgrnd.c
