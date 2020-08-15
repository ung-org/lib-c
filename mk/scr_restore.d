libcurses_X.400: libcurses.a(scr_restore.o)
libcurses.a(scr_restore.o): $(OBJDIR)/scr_restore.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/scr_restore.o: src/curses/scr_restore.c
$(OBJDIR)/scr_restore.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/scr_restore.c
