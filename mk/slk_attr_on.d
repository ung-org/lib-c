libcurses_X.400: libcurses.a(slk_attr_on.o)
libcurses.a(slk_attr_on.o): $(OBJDIR)/slk_attr_on.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/slk_attr_on.o: src/curses/slk_attr_on.c
$(OBJDIR)/slk_attr_on.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/slk_attr_on.c
