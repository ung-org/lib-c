libcurses_X.4: libcurses.a(mvwscanw.o)
libcurses.a(mvwscanw.o): $(OBJDIR)/mvwscanw.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/mvwscanw.o: src/curses/mvwscanw.c
$(OBJDIR)/mvwscanw.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/mvwscanw.c
