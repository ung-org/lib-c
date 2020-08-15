libcurses_X.4: libcurses.a(has_ic.o)
libcurses.a(has_ic.o): $(OBJDIR)/has_ic.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/has_ic.o: src/curses/has_ic.c
$(OBJDIR)/has_ic.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/has_ic.c
