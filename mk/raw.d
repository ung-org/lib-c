libcurses_X.4: libcurses.a(raw.o)
libcurses.a(raw.o): $(OBJDIR)/raw.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/raw.o: src/curses/raw.c
$(OBJDIR)/raw.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/raw.c
