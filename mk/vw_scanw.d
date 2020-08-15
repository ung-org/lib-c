libcurses_X.400: libcurses.a(vw_scanw.o)
libcurses.a(vw_scanw.o): $(OBJDIR)/vw_scanw.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/vw_scanw.o: src/curses/vw_scanw.c
$(OBJDIR)/vw_scanw.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/vw_scanw.c
