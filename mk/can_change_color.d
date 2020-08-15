libcurses_X.400: libcurses.a(can_change_color.o)
libcurses.a(can_change_color.o): $(OBJDIR)/can_change_color.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/can_change_color.o: src/curses/can_change_color.c
$(OBJDIR)/can_change_color.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/can_change_color.c
