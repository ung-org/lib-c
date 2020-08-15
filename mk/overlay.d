libcurses_X.4: libcurses.a(overlay.o)
libcurses.a(overlay.o): $(OBJDIR)/overlay.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/overlay.o: src/curses/overlay.c
$(OBJDIR)/overlay.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/overlay.c
