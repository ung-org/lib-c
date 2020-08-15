libcurses_X.400: libcurses.a(keyname.o)
libcurses.a(keyname.o): $(OBJDIR)/keyname.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/keyname.o: src/curses/keyname.c
$(OBJDIR)/keyname.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/keyname.c
