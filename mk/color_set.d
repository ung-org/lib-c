libcurses_X.400: libcurses.a(color_set.o)
libcurses.a(color_set.o): $(OBJDIR)/color_set.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/color_set.o: src/curses/color_set.c
$(OBJDIR)/color_set.o: src/curses/_curses.h
$(OBJDIR)/color_set.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/color_set.c
