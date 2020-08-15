libcurses_X.400: libcurses.a(isendwin.o)
libcurses.a(isendwin.o): $(OBJDIR)/isendwin.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/isendwin.o: src/curses/isendwin.c
$(OBJDIR)/isendwin.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/isendwin.c
