libcurses_X.4: libcurses.a(erasechar.o)
libcurses.a(erasechar.o): $(OBJDIR)/erasechar.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/erasechar.o: src/curses/erasechar.c
$(OBJDIR)/erasechar.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/erasechar.c
