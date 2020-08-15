libcurses_X.4: libcurses.a(flushinp.o)
libcurses.a(flushinp.o): $(OBJDIR)/flushinp.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/flushinp.o: src/curses/flushinp.c
$(OBJDIR)/flushinp.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/flushinp.c
