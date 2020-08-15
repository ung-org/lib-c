libcurses_X.4: libcurses.a(getstr.o)
libcurses.a(getstr.o): $(OBJDIR)/getstr.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/getstr.o: src/curses/getstr.c
$(OBJDIR)/getstr.o: src/curses/_curses.h
$(OBJDIR)/getstr.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/getstr.c
