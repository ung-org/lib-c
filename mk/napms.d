libcurses_X.400: libcurses.a(napms.o)
libcurses.a(napms.o): $(OBJDIR)/napms.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/napms.o: src/curses/napms.c
$(OBJDIR)/napms.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/napms.c
