libcurses_X.400: libcurses.a(immedok.o)
libcurses.a(immedok.o): $(OBJDIR)/immedok.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/immedok.o: src/curses/immedok.c
$(OBJDIR)/immedok.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/immedok.c
