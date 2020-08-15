libcurses_X.400: libcurses.a(pechochar.o)
libcurses.a(pechochar.o): $(OBJDIR)/pechochar.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/pechochar.o: src/curses/pechochar.c
$(OBJDIR)/pechochar.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/pechochar.c
