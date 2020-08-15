libcurses_X.4: libcurses.a(prefresh.o)
libcurses.a(prefresh.o): $(OBJDIR)/prefresh.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/prefresh.o: src/curses/prefresh.c
$(OBJDIR)/prefresh.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/prefresh.c
