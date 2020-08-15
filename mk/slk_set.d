libcurses_X.400: libcurses.a(slk_set.o)
libcurses.a(slk_set.o): $(OBJDIR)/slk_set.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/slk_set.o: src/curses/slk_set.c
$(OBJDIR)/slk_set.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/slk_set.c
