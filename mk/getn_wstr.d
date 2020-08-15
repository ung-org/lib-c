libcurses_X.400: libcurses.a(getn_wstr.o)
libcurses.a(getn_wstr.o): $(OBJDIR)/getn_wstr.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/getn_wstr.o: src/curses/getn_wstr.c
$(OBJDIR)/getn_wstr.o: src/curses/_curses.h
$(OBJDIR)/getn_wstr.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/getn_wstr.c
