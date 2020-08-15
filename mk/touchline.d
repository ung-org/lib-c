libcurses_X.400: libcurses.a(touchline.o)
libcurses.a(touchline.o): $(OBJDIR)/touchline.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/touchline.o: src/curses/touchline.c
$(OBJDIR)/touchline.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/touchline.c
