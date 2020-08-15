libcurses_X.400: libcurses.a(ins_wstr.o)
libcurses.a(ins_wstr.o): $(OBJDIR)/ins_wstr.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/ins_wstr.o: src/curses/ins_wstr.c
$(OBJDIR)/ins_wstr.o: src/curses/_curses.h
$(OBJDIR)/ins_wstr.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/ins_wstr.c
