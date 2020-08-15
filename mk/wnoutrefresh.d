libcurses_X.4: libcurses.a(wnoutrefresh.o)
libcurses.a(wnoutrefresh.o): $(OBJDIR)/wnoutrefresh.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/wnoutrefresh.o: src/curses/wnoutrefresh.c
$(OBJDIR)/wnoutrefresh.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/wnoutrefresh.c
