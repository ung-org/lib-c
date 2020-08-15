libcurses_X.400: libcurses.a(wredrawln.o)
libcurses.a(wredrawln.o): $(OBJDIR)/wredrawln.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/wredrawln.o: src/curses/wredrawln.c
$(OBJDIR)/wredrawln.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/wredrawln.c
