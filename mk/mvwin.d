libcurses_X.4: libcurses.a(mvwin.o)
libcurses.a(mvwin.o): $(OBJDIR)/mvwin.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/mvwin.o: src/curses/mvwin.c
$(OBJDIR)/mvwin.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/mvwin.c
