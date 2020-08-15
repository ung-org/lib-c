libcurses_X.4: libcurses.a(noecho.o)
libcurses.a(noecho.o): $(OBJDIR)/noecho.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/noecho.o: src/curses/noecho.c
$(OBJDIR)/noecho.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/noecho.c
