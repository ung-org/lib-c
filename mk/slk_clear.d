libcurses_X.400: libcurses.a(slk_clear.o)
libcurses.a(slk_clear.o): $(OBJDIR)/slk_clear.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/slk_clear.o: src/curses/slk_clear.c
$(OBJDIR)/slk_clear.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/slk_clear.c
