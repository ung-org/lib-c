libcurses_X.400: libcurses.a(bkgrndset.o)
libcurses.a(bkgrndset.o): $(OBJDIR)/bkgrndset.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/bkgrndset.o: src/curses/bkgrndset.c
$(OBJDIR)/bkgrndset.o: src/curses/_curses.h
$(OBJDIR)/bkgrndset.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/bkgrndset.c
