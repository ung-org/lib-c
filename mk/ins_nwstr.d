libcurses_X.400: libcurses.a(ins_nwstr.o)
libcurses.a(ins_nwstr.o): $(OBJDIR)/ins_nwstr.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/ins_nwstr.o: src/curses/ins_nwstr.c
$(OBJDIR)/ins_nwstr.o: src/curses/_curses.h
$(OBJDIR)/ins_nwstr.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/ins_nwstr.c
