libcurses_X.4: libcurses.a(savetty.o)
libcurses.a(savetty.o): $(OBJDIR)/savetty.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/savetty.o: src/curses/savetty.c
$(OBJDIR)/savetty.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/savetty.c
