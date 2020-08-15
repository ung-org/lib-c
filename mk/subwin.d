libcurses_X.4: libcurses.a(subwin.o)
libcurses.a(subwin.o): $(OBJDIR)/subwin.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/subwin.o: src/curses/subwin.c
$(OBJDIR)/subwin.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/subwin.c
