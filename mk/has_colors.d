libcurses_X.400: libcurses.a(has_colors.o)
libcurses.a(has_colors.o): $(OBJDIR)/has_colors.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/has_colors.o: src/curses/has_colors.c
$(OBJDIR)/has_colors.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/has_colors.c
