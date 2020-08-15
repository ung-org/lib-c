libcurses_X.400: libcurses.a(tigetnum.o)
libcurses.a(tigetnum.o): $(OBJDIR)/tigetnum.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/tigetnum.o: src/term/tigetnum.c
$(OBJDIR)/tigetnum.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/term/tigetnum.c
