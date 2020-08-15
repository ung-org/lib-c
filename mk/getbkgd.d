libcurses_X.400: libcurses.a(getbkgd.o)
libcurses.a(getbkgd.o): $(OBJDIR)/getbkgd.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/getbkgd.o: src/curses/getbkgd.c
$(OBJDIR)/getbkgd.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/getbkgd.c
