libcurses_X.4: libcurses.a(setscrreg.o)
libcurses.a(setscrreg.o): $(OBJDIR)/setscrreg.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/setscrreg.o: src/curses/setscrreg.c
$(OBJDIR)/setscrreg.o: src/curses/_curses.h
$(OBJDIR)/setscrreg.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/setscrreg.c
