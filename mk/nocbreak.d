libcurses_X.4: libcurses.a(nocbreak.o)
libcurses.a(nocbreak.o): $(OBJDIR)/nocbreak.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/nocbreak.o: src/curses/nocbreak.c
$(OBJDIR)/nocbreak.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/nocbreak.c
