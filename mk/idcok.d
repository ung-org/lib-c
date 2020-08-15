libcurses_X.400: libcurses.a(idcok.o)
libcurses.a(idcok.o): $(OBJDIR)/idcok.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/idcok.o: src/curses/idcok.c
$(OBJDIR)/idcok.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/idcok.c
