libcurses_X.400: libcurses.a(scr_init.o)
libcurses.a(scr_init.o): $(OBJDIR)/scr_init.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/scr_init.o: src/curses/scr_init.c
$(OBJDIR)/scr_init.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/scr_init.c
