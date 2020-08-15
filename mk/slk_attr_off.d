libcurses_X.400: libcurses.a(slk_attr_off.o)
libcurses.a(slk_attr_off.o): $(OBJDIR)/slk_attr_off.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/slk_attr_off.o: src/curses/slk_attr_off.c
$(OBJDIR)/slk_attr_off.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/slk_attr_off.c
