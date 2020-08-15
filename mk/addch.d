libcurses_X.4: libcurses.a(addch.o)
libcurses.a(addch.o): $(OBJDIR)/addch.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/addch.o: src/curses/addch.c
$(OBJDIR)/addch.o: src/curses/_curses.h
$(OBJDIR)/addch.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/addch.c
