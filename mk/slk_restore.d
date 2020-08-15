libcurses_X.400: libcurses.a(slk_restore.o)
libcurses.a(slk_restore.o): $(OBJDIR)/slk_restore.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/slk_restore.o: src/curses/slk_restore.c
$(OBJDIR)/slk_restore.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/slk_restore.c
