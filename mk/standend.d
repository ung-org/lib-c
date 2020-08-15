libcurses_X.4: libcurses.a(standend.o)
libcurses.a(standend.o): $(OBJDIR)/standend.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/standend.o: src/curses/standend.c
$(OBJDIR)/standend.o: src/curses/_curses.h
$(OBJDIR)/standend.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/standend.c
