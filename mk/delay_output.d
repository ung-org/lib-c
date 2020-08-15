libcurses_X.4: libcurses.a(delay_output.o)
libcurses.a(delay_output.o): $(OBJDIR)/delay_output.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/delay_output.o: src/curses/delay_output.c
$(OBJDIR)/delay_output.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/delay_output.c
