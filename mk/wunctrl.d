libcurses_X.400: libcurses.a(wunctrl.o)
libcurses.a(wunctrl.o): $(OBJDIR)/wunctrl.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/wunctrl.o: src/curses/wunctrl.c
$(OBJDIR)/wunctrl.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/wunctrl.c
