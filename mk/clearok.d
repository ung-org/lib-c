libcurses_X.4: libcurses.a(clearok.o)
libcurses.a(clearok.o): $(OBJDIR)/clearok.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/clearok.o: src/curses/clearok.c
$(OBJDIR)/clearok.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/clearok.c
