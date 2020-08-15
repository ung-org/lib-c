libcurses_X.400: libcurses.a(insdelln.o)
libcurses.a(insdelln.o): $(OBJDIR)/insdelln.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/insdelln.o: src/curses/insdelln.c
$(OBJDIR)/insdelln.o: src/curses/_curses.h
$(OBJDIR)/insdelln.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/insdelln.c
