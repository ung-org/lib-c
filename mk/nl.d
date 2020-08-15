libcurses_X.4: libcurses.a(nl.o)
libcurses.a(nl.o): $(OBJDIR)/nl.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/nl.o: src/curses/nl.c
$(OBJDIR)/nl.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/nl.c
