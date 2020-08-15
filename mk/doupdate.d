libcurses_X.4: libcurses.a(doupdate.o)
libcurses.a(doupdate.o): $(OBJDIR)/doupdate.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/doupdate.o: src/curses/doupdate.c
$(OBJDIR)/doupdate.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/doupdate.c
