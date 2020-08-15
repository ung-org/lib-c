libcurses_X.400: libcurses.a(term_attrs.o)
libcurses.a(term_attrs.o): $(OBJDIR)/term_attrs.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/term_attrs.o: src/curses/term_attrs.c
$(OBJDIR)/term_attrs.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/term_attrs.c
