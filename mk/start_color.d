libcurses_X.400: libcurses.a(start_color.o)
libcurses.a(start_color.o): $(OBJDIR)/start_color.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/start_color.o: src/curses/start_color.c
$(OBJDIR)/start_color.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/start_color.c
