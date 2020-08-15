libcurses_X.400: libcurses.a(termattrs.o)
libcurses.a(termattrs.o): $(OBJDIR)/termattrs.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/termattrs.o: src/curses/termattrs.c
$(OBJDIR)/termattrs.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/termattrs.c
