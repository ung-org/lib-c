libcurses_X.400: libcurses.a(scr_set.o)
libcurses.a(scr_set.o): $(OBJDIR)/scr_set.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/scr_set.o: src/curses/scr_set.c
$(OBJDIR)/scr_set.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/scr_set.c
