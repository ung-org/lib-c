libcurses_X.400: libcurses.a(scr_dump.o)
libcurses.a(scr_dump.o): $(OBJDIR)/scr_dump.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/scr_dump.o: src/curses/scr_dump.c
$(OBJDIR)/scr_dump.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/scr_dump.c
