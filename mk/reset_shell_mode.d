libcurses_X.4: libcurses.a(reset_shell_mode.o)
libcurses.a(reset_shell_mode.o): $(OBJDIR)/reset_shell_mode.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/reset_shell_mode.o: src/curses/reset_shell_mode.c
$(OBJDIR)/reset_shell_mode.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/reset_shell_mode.c
