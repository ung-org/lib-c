libcurses_X.400: libcurses.a(pair_content.o)
libcurses.a(pair_content.o): $(OBJDIR)/pair_content.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/pair_content.o: src/curses/pair_content.c
$(OBJDIR)/pair_content.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/pair_content.c
