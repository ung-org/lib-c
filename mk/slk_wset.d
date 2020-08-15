libcurses_X.400: libcurses.a(slk_wset.o)
libcurses.a(slk_wset.o): $(OBJDIR)/slk_wset.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/slk_wset.o: src/curses/slk_wset.c
$(OBJDIR)/slk_wset.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/slk_wset.c
