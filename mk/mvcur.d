libcurses_X.400: libcurses.a(mvcur.o)
libcurses.a(mvcur.o): $(OBJDIR)/mvcur.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/mvcur.o: src/curses/mvcur.c
$(OBJDIR)/mvcur.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/mvcur.c
