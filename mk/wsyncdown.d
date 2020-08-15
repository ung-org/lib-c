libcurses_X.400: libcurses.a(wsyncdown.o)
libcurses.a(wsyncdown.o): $(OBJDIR)/wsyncdown.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/wsyncdown.o: src/curses/wsyncdown.c
$(OBJDIR)/wsyncdown.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/wsyncdown.c
