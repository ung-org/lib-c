libcurses_X.4: libcurses.a(inch.o)
libcurses.a(inch.o): $(OBJDIR)/inch.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/inch.o: src/curses/inch.c
$(OBJDIR)/inch.o: src/curses/_curses.h
$(OBJDIR)/inch.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/inch.c
