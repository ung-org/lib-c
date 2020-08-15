libcurses_X.400: libcurses.a(slk_label.o)
libcurses.a(slk_label.o): $(OBJDIR)/slk_label.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/slk_label.o: src/curses/slk_label.c
$(OBJDIR)/slk_label.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/slk_label.c
