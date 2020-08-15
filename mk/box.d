libcurses_X.4: libcurses.a(box.o)
libcurses.a(box.o): $(OBJDIR)/box.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/box.o: src/curses/box.c
$(OBJDIR)/box.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/box.c
