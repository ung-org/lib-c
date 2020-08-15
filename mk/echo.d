libcurses_X.4: libcurses.a(echo.o)
libcurses.a(echo.o): $(OBJDIR)/echo.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/echo.o: src/curses/echo.c
$(OBJDIR)/echo.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/echo.c
