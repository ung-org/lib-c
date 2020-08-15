libcurses_X.4: libcurses.a(LINES.o)
libcurses.a(LINES.o): $(OBJDIR)/LINES.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/LINES.o: src/curses/LINES.c
$(OBJDIR)/LINES.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/LINES.c
