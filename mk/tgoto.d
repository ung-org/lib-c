libcurses_X.400: libcurses.a(tgoto.o)
libcurses.a(tgoto.o): $(OBJDIR)/tgoto.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/tgoto.o: src/term/tgoto.c
$(OBJDIR)/tgoto.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/term/tgoto.c
