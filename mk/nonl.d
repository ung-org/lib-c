libcurses_X.4: libcurses.a(nonl.o)
libcurses.a(nonl.o): $(OBJDIR)/nonl.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/nonl.o: src/curses/nonl.c
$(OBJDIR)/nonl.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/nonl.c
