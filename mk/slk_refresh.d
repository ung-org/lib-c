libcurses_X.400: libcurses.a(slk_refresh.o)
libcurses.a(slk_refresh.o): $(OBJDIR)/slk_refresh.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/slk_refresh.o: src/curses/slk_refresh.c
$(OBJDIR)/slk_refresh.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/slk_refresh.c
