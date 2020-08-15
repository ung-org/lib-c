libcurses_X.400: libcurses.a(is_wintouched.o)
libcurses.a(is_wintouched.o): $(OBJDIR)/is_wintouched.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/is_wintouched.o: src/curses/is_wintouched.c
$(OBJDIR)/is_wintouched.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/is_wintouched.c
