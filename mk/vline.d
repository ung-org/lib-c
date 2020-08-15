libcurses_X.400: libcurses.a(vline.o)
libcurses.a(vline.o): $(OBJDIR)/vline.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/vline.o: src/curses/vline.c
$(OBJDIR)/vline.o: src/curses/_curses.h
$(OBJDIR)/vline.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/vline.c
