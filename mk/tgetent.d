libcurses_X.400: libcurses.a(tgetent.o)
libcurses.a(tgetent.o): $(OBJDIR)/tgetent.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/tgetent.o: src/term/tgetent.c
$(OBJDIR)/tgetent.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/term/tgetent.c
