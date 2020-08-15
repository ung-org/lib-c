libcurses_X.4: libcurses.a(baudrate.o)
libcurses.a(baudrate.o): $(OBJDIR)/baudrate.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/baudrate.o: src/curses/baudrate.c
$(OBJDIR)/baudrate.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/baudrate.c
