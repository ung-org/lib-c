libcurses_X.400: libcurses.a(unget_wch.o)
libcurses.a(unget_wch.o): $(OBJDIR)/unget_wch.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/unget_wch.o: src/curses/unget_wch.c
$(OBJDIR)/unget_wch.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/unget_wch.c
