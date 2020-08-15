libcurses_X.4: libcurses.a(set_term.o)
libcurses.a(set_term.o): $(OBJDIR)/set_term.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/set_term.o: src/curses/set_term.c
$(OBJDIR)/set_term.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/set_term.c
