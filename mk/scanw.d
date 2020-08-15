libcurses_X.4: libcurses.a(scanw.o)
libcurses.a(scanw.o): $(OBJDIR)/scanw.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/scanw.o: src/curses/scanw.c
$(OBJDIR)/scanw.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/scanw.c
