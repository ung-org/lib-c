libcurses_X.400: libcurses.a(ins_wch.o)
libcurses.a(ins_wch.o): $(OBJDIR)/ins_wch.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/ins_wch.o: src/curses/ins_wch.c
$(OBJDIR)/ins_wch.o: src/curses/_curses.h
$(OBJDIR)/ins_wch.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/ins_wch.c
