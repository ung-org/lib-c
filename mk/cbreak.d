libcurses_X.4: libcurses.a(cbreak.o)
libcurses.a(cbreak.o): $(OBJDIR)/cbreak.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/cbreak.o: src/curses/cbreak.c
$(OBJDIR)/cbreak.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/cbreak.c
