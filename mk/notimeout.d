libcurses_X.400: libcurses.a(notimeout.o)
libcurses.a(notimeout.o): $(OBJDIR)/notimeout.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/notimeout.o: src/curses/notimeout.c
$(OBJDIR)/notimeout.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/notimeout.c
