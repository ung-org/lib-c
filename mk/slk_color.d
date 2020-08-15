libcurses_X.400: libcurses.a(slk_color.o)
libcurses.a(slk_color.o): $(OBJDIR)/slk_color.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/slk_color.o: src/curses/slk_color.c
$(OBJDIR)/slk_color.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/slk_color.c
