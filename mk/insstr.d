libcurses_X.400: libcurses.a(insstr.o)
libcurses.a(insstr.o): $(OBJDIR)/insstr.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/insstr.o: src/curses/insstr.c
$(OBJDIR)/insstr.o: src/curses/_curses.h
$(OBJDIR)/insstr.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/insstr.c
