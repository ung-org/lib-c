libcurses_X.4: libcurses.a(scrollok.o)
libcurses.a(scrollok.o): $(OBJDIR)/scrollok.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/scrollok.o: src/curses/scrollok.c
$(OBJDIR)/scrollok.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/scrollok.c
