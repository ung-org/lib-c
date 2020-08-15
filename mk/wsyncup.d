libcurses_X.400: libcurses.a(wsyncup.o)
libcurses.a(wsyncup.o): $(OBJDIR)/wsyncup.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/wsyncup.o: src/curses/wsyncup.c
$(OBJDIR)/wsyncup.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/wsyncup.c
