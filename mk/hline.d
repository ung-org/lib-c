libcurses_X.400: libcurses.a(hline.o)
libcurses.a(hline.o): $(OBJDIR)/hline.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/hline.o: src/curses/hline.c
$(OBJDIR)/hline.o: src/curses/_curses.h
$(OBJDIR)/hline.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/hline.c
