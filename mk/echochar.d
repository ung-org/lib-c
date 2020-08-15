libcurses_X.400: libcurses.a(echochar.o)
libcurses.a(echochar.o): $(OBJDIR)/echochar.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/echochar.o: src/curses/echochar.c
$(OBJDIR)/echochar.o: src/curses/_curses.h
$(OBJDIR)/echochar.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/echochar.c
