libcurses_X.400: libcurses.a(ripoffline.o)
libcurses.a(ripoffline.o): $(OBJDIR)/ripoffline.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/ripoffline.o: src/curses/ripoffline.c
$(OBJDIR)/ripoffline.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/ripoffline.c
