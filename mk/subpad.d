libcurses_X.400: libcurses.a(subpad.o)
libcurses.a(subpad.o): $(OBJDIR)/subpad.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/subpad.o: src/curses/subpad.c
$(OBJDIR)/subpad.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/subpad.c
