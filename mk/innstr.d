libcurses_X.400: libcurses.a(innstr.o)
libcurses.a(innstr.o): $(OBJDIR)/innstr.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/innstr.o: src/curses/innstr.c
$(OBJDIR)/innstr.o: src/curses/_curses.h
$(OBJDIR)/innstr.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/innstr.c
