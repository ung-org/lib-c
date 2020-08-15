libcurses_X.400: libcurses.a(slk_init.o)
libcurses.a(slk_init.o): $(OBJDIR)/slk_init.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/slk_init.o: src/curses/slk_init.c
$(OBJDIR)/slk_init.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/slk_init.c
