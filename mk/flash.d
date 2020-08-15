libcurses_X.4: libcurses.a(flash.o)
libcurses.a(flash.o): $(OBJDIR)/flash.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/flash.o: src/curses/flash.c
$(OBJDIR)/flash.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/flash.c
