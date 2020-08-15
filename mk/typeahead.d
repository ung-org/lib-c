libcurses_X.4: libcurses.a(typeahead.o)
libcurses.a(typeahead.o): $(OBJDIR)/typeahead.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/typeahead.o: src/curses/typeahead.c
$(OBJDIR)/typeahead.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/typeahead.c
