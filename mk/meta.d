libcurses_X.400: libcurses.a(meta.o)
libcurses.a(meta.o): $(OBJDIR)/meta.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/meta.o: src/curses/meta.c
$(OBJDIR)/meta.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/meta.c
