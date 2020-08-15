libcurses_X.4: libcurses.a(beep.o)
libcurses.a(beep.o): $(OBJDIR)/beep.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/beep.o: src/curses/beep.c
$(OBJDIR)/beep.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/beep.c
