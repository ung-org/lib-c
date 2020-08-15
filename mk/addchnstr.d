libcurses_X.400: libcurses.a(addchnstr.o)
libcurses.a(addchnstr.o): $(OBJDIR)/addchnstr.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/addchnstr.o: src/curses/addchnstr.c
$(OBJDIR)/addchnstr.o: src/curses/_curses.h
$(OBJDIR)/addchnstr.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/addchnstr.c
