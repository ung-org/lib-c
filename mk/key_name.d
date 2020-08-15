libcurses_X.400: libcurses.a(key_name.o)
libcurses.a(key_name.o): $(OBJDIR)/key_name.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/key_name.o: src/curses/key_name.c
$(OBJDIR)/key_name.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/key_name.c
