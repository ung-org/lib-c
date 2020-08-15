libcurses_X.400: libcurses.a(box_set.o)
libcurses.a(box_set.o): $(OBJDIR)/box_set.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/box_set.o: src/curses/box_set.c
$(OBJDIR)/box_set.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/box_set.c
