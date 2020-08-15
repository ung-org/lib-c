libcurses_X.400: libcurses.a(mvderwin.o)
libcurses.a(mvderwin.o): $(OBJDIR)/mvderwin.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/mvderwin.o: src/curses/mvderwin.c
$(OBJDIR)/mvderwin.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/mvderwin.c
