libcurses_X.4: libcurses.a(noraw.o)
libcurses.a(noraw.o): $(OBJDIR)/noraw.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/noraw.o: src/curses/noraw.c
$(OBJDIR)/noraw.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/noraw.c
