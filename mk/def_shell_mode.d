libcurses_X.4: libcurses.a(def_shell_mode.o)
libcurses.a(def_shell_mode.o): $(OBJDIR)/def_shell_mode.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/def_shell_mode.o: src/curses/def_shell_mode.c
$(OBJDIR)/def_shell_mode.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/def_shell_mode.c
