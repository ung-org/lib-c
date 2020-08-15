libcurses_X.400: libcurses.a(pecho_wchar.o)
libcurses.a(pecho_wchar.o): $(OBJDIR)/pecho_wchar.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/pecho_wchar.o: src/curses/pecho_wchar.c
$(OBJDIR)/pecho_wchar.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/pecho_wchar.c
