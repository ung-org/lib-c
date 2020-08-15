libcurses_X.400: libcurses.a(set_curterm.o)
libcurses.a(set_curterm.o): $(OBJDIR)/set_curterm.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/set_curterm.o: src/term/set_curterm.c
$(OBJDIR)/set_curterm.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/term/set_curterm.c
