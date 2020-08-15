libcurses_X.400: libcurses.a(halfdelay.o)
libcurses.a(halfdelay.o): $(OBJDIR)/halfdelay.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/halfdelay.o: src/curses/halfdelay.c
$(OBJDIR)/halfdelay.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/halfdelay.c
