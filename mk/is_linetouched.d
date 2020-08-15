libcurses_X.400: libcurses.a(is_linetouched.o)
libcurses.a(is_linetouched.o): $(OBJDIR)/is_linetouched.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/is_linetouched.o: src/curses/is_linetouched.c
$(OBJDIR)/is_linetouched.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/is_linetouched.c
