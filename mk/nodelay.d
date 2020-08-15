libcurses_X.4: libcurses.a(nodelay.o)
libcurses.a(nodelay.o): $(OBJDIR)/nodelay.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/nodelay.o: src/curses/nodelay.c
$(OBJDIR)/nodelay.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/nodelay.c
