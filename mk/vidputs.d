libcurses_X.400: libcurses.a(vidputs.o)
libcurses.a(vidputs.o): $(OBJDIR)/vidputs.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/vidputs.o: src/curses/vidputs.c
$(OBJDIR)/vidputs.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/vidputs.c
