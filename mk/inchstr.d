libcurses_X.400: libcurses.a(inchstr.o)
libcurses.a(inchstr.o): $(OBJDIR)/inchstr.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/inchstr.o: src/curses/inchstr.c
$(OBJDIR)/inchstr.o: src/curses/_curses.h
$(OBJDIR)/inchstr.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/inchstr.c
