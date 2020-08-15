libcurses_X.4: libcurses.a(delch.o)
libcurses.a(delch.o): $(OBJDIR)/delch.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/delch.o: src/curses/delch.c
$(OBJDIR)/delch.o: src/curses/_curses.h
$(OBJDIR)/delch.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/delch.c
