libcurses_X.400: libcurses.a(putwin.o)
libcurses.a(putwin.o): $(OBJDIR)/putwin.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/putwin.o: src/curses/putwin.c
$(OBJDIR)/putwin.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/putwin.c
