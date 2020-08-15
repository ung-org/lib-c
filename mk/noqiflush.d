libcurses_X.400: libcurses.a(noqiflush.o)
libcurses.a(noqiflush.o): $(OBJDIR)/noqiflush.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/noqiflush.o: src/curses/noqiflush.c
$(OBJDIR)/noqiflush.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/noqiflush.c
