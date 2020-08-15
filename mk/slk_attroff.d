libcurses_X.400: libcurses.a(slk_attroff.o)
libcurses.a(slk_attroff.o): $(OBJDIR)/slk_attroff.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/slk_attroff.o: src/curses/slk_attroff.c
$(OBJDIR)/slk_attroff.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/slk_attroff.c
