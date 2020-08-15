libcurses_X.400: libcurses.a(tgetstr.o)
libcurses.a(tgetstr.o): $(OBJDIR)/tgetstr.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/tgetstr.o: src/term/tgetstr.c
$(OBJDIR)/tgetstr.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/term/tgetstr.c
