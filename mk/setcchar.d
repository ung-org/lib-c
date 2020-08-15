libcurses_X.400: libcurses.a(setcchar.o)
libcurses.a(setcchar.o): $(OBJDIR)/setcchar.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/setcchar.o: src/curses/setcchar.c
$(OBJDIR)/setcchar.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/setcchar.c
