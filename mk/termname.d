libcurses_X.400: libcurses.a(termname.o)
libcurses.a(termname.o): $(OBJDIR)/termname.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/termname.o: src/curses/termname.c
$(OBJDIR)/termname.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/termname.c
