libcurses_X.400: libcurses.a(vid_attr.o)
libcurses.a(vid_attr.o): $(OBJDIR)/vid_attr.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/vid_attr.o: src/curses/vid_attr.c
$(OBJDIR)/vid_attr.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/vid_attr.c
