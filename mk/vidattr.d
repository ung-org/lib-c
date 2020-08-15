libcurses_X.400: libcurses.a(vidattr.o)
libcurses.a(vidattr.o): $(OBJDIR)/vidattr.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/vidattr.o: src/curses/vidattr.c
$(OBJDIR)/vidattr.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/vidattr.c
