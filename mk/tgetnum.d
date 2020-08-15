libcurses_X.400: libcurses.a(tgetnum.o)
libcurses.a(tgetnum.o): $(OBJDIR)/tgetnum.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/tgetnum.o: src/term/tgetnum.c
$(OBJDIR)/tgetnum.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/term/tgetnum.c
