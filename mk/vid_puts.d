libcurses_X.400: libcurses.a(vid_puts.o)
libcurses.a(vid_puts.o): $(OBJDIR)/vid_puts.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/vid_puts.o: src/curses/vid_puts.c
$(OBJDIR)/vid_puts.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/vid_puts.c
