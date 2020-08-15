libcurses_X.400: libcurses.a(killwchar.o)
libcurses.a(killwchar.o): $(OBJDIR)/killwchar.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/killwchar.o: src/curses/killwchar.c
$(OBJDIR)/killwchar.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/killwchar.c
