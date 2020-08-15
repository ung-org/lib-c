libcurses_X.400: libcurses.a(wcursyncup.o)
libcurses.a(wcursyncup.o): $(OBJDIR)/wcursyncup.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/wcursyncup.o: src/curses/wcursyncup.c
$(OBJDIR)/wcursyncup.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/wcursyncup.c
