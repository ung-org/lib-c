libcurses_X.4: libcurses.a(wscanw.o)
libcurses.a(wscanw.o): $(OBJDIR)/wscanw.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/wscanw.o: src/curses/wscanw.c
$(OBJDIR)/wscanw.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/wscanw.c
