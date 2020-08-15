libcurses_X.4: libcurses.a(insch.o)
libcurses.a(insch.o): $(OBJDIR)/insch.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/insch.o: src/curses/insch.c
$(OBJDIR)/insch.o: src/curses/_curses.h
$(OBJDIR)/insch.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/insch.c
