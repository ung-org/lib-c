libcurses_X.4: libcurses.a(resetty.o)
libcurses.a(resetty.o): $(OBJDIR)/resetty.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/resetty.o: src/curses/resetty.c
$(OBJDIR)/resetty.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/resetty.c
