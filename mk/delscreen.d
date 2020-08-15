libcurses_X.400: libcurses.a(delscreen.o)
libcurses.a(delscreen.o): $(OBJDIR)/delscreen.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/delscreen.o: src/curses/delscreen.c
$(OBJDIR)/delscreen.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/delscreen.c
