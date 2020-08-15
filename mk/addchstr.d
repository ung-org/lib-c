libcurses_X.4: libcurses.a(addchstr.o)
libcurses.a(addchstr.o): $(OBJDIR)/addchstr.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/addchstr.o: src/curses/addchstr.c
$(OBJDIR)/addchstr.o: src/curses/_curses.h
$(OBJDIR)/addchstr.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/addchstr.c
