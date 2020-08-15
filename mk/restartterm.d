libcurses_X.400: libcurses.a(restartterm.o)
libcurses.a(restartterm.o): $(OBJDIR)/restartterm.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/restartterm.o: src/term/restartterm.c
$(OBJDIR)/restartterm.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/term/restartterm.c
