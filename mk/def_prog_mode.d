libcurses_X.4: libcurses.a(def_prog_mode.o)
libcurses.a(def_prog_mode.o): $(OBJDIR)/def_prog_mode.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/def_prog_mode.o: src/curses/def_prog_mode.c
$(OBJDIR)/def_prog_mode.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/def_prog_mode.c
