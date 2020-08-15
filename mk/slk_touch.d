libcurses_X.400: libcurses.a(slk_touch.o)
libcurses.a(slk_touch.o): $(OBJDIR)/slk_touch.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/slk_touch.o: src/curses/slk_touch.c
$(OBJDIR)/slk_touch.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/slk_touch.c
