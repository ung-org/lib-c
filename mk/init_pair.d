libcurses_X.400: libcurses.a(init_pair.o)
libcurses.a(init_pair.o): $(OBJDIR)/init_pair.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/init_pair.o: src/curses/init_pair.c
$(OBJDIR)/init_pair.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/init_pair.c
