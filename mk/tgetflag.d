libcurses_X.400: libcurses.a(tgetflag.o)
libcurses.a(tgetflag.o): $(OBJDIR)/tgetflag.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/tgetflag.o: src/term/tgetflag.c
$(OBJDIR)/tgetflag.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/term/tgetflag.c
