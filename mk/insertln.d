libcurses_X.4: libcurses.a(insertln.o)
libcurses.a(insertln.o): $(OBJDIR)/insertln.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/insertln.o: src/curses/insertln.c
$(OBJDIR)/insertln.o: src/curses/_curses.h
$(OBJDIR)/insertln.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/insertln.c
