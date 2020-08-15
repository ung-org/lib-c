libcurses_X.400: libcurses.a(del_curterm.o)
libcurses.a(del_curterm.o): $(OBJDIR)/del_curterm.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/del_curterm.o: src/term/del_curterm.c
$(OBJDIR)/del_curterm.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/term/del_curterm.c
