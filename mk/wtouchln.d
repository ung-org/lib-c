libcurses_X.400: libcurses.a(wtouchln.o)
libcurses.a(wtouchln.o): $(OBJDIR)/wtouchln.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/wtouchln.o: src/curses/wtouchln.c
$(OBJDIR)/wtouchln.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/wtouchln.c
