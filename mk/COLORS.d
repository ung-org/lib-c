libcurses_X.400: libcurses.a(COLORS.o)
libcurses.a(COLORS.o): $(OBJDIR)/COLORS.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/COLORS.o: src/curses/COLORS.c
$(OBJDIR)/COLORS.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/COLORS.c
