libcurses_X.400: libcurses.a(innwstr.o)
libcurses.a(innwstr.o): $(OBJDIR)/innwstr.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/innwstr.o: src/curses/innwstr.c
$(OBJDIR)/innwstr.o: src/curses/_curses.h
$(OBJDIR)/innwstr.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/innwstr.c
