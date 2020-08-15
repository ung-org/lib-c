libcurses_X.400: libcurses.a(instr.o)
libcurses.a(instr.o): $(OBJDIR)/instr.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/instr.o: src/curses/instr.c
$(OBJDIR)/instr.o: src/curses/_curses.h
$(OBJDIR)/instr.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/instr.c
