libcurses_X.400: libcurses.a(erasewchar.o)
libcurses.a(erasewchar.o): $(OBJDIR)/erasewchar.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/erasewchar.o: src/curses/erasewchar.c
$(OBJDIR)/erasewchar.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/erasewchar.c
