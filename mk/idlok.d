libcurses_X.4: libcurses.a(idlok.o)
libcurses.a(idlok.o): $(OBJDIR)/idlok.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/idlok.o: src/curses/idlok.c
$(OBJDIR)/idlok.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/idlok.c
