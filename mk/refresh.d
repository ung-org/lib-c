libcurses_X.4: libcurses.a(refresh.o)
libcurses.a(refresh.o): $(OBJDIR)/refresh.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/refresh.o: src/curses/refresh.c
$(OBJDIR)/refresh.o: src/curses/_curses.h
$(OBJDIR)/refresh.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/refresh.c
