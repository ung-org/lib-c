libcurses_X.400: libcurses.a(init_color.o)
libcurses.a(init_color.o): $(OBJDIR)/init_color.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/init_color.o: src/curses/init_color.c
$(OBJDIR)/init_color.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/init_color.c
