libcurses_X.4: libcurses.a(intrflush.o)
libcurses.a(intrflush.o): $(OBJDIR)/intrflush.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/intrflush.o: src/curses/intrflush.c
$(OBJDIR)/intrflush.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/intrflush.c
