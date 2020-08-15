libcurses_X.4: libcurses.a(killchar.o)
libcurses.a(killchar.o): $(OBJDIR)/killchar.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/killchar.o: src/curses/killchar.c
$(OBJDIR)/killchar.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/killchar.c
