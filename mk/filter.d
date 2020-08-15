libcurses_X.400: libcurses.a(filter.o)
libcurses.a(filter.o): $(OBJDIR)/filter.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/filter.o: src/curses/filter.c
$(OBJDIR)/filter.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/filter.c
