libcurses_X.4: libcurses.a(newterm.o)
libcurses.a(newterm.o): $(OBJDIR)/newterm.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/newterm.o: src/curses/newterm.c
$(OBJDIR)/newterm.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/newterm.c
