libcurses_X.4: libcurses.a(reset_prog_mode.o)
libcurses.a(reset_prog_mode.o): $(OBJDIR)/reset_prog_mode.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/reset_prog_mode.o: src/curses/reset_prog_mode.c
$(OBJDIR)/reset_prog_mode.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/reset_prog_mode.c
