libcurses_X.400: libcurses.a(dupwin.o)
libcurses.a(dupwin.o): $(OBJDIR)/dupwin.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/dupwin.o: src/curses/dupwin.c
$(OBJDIR)/dupwin.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/dupwin.c
