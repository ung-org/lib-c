libcurses_X.400: libcurses.a(slk_attrset.o)
libcurses.a(slk_attrset.o): $(OBJDIR)/slk_attrset.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/slk_attrset.o: src/curses/slk_attrset.c
$(OBJDIR)/slk_attrset.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/slk_attrset.c
