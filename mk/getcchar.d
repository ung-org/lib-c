libcurses_X.400: libcurses.a(getcchar.o)
libcurses.a(getcchar.o): $(OBJDIR)/getcchar.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/getcchar.o: src/curses/getcchar.c
$(OBJDIR)/getcchar.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/getcchar.c
