libcurses_X.4: libcurses.a(leaveok.o)
libcurses.a(leaveok.o): $(OBJDIR)/leaveok.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/leaveok.o: src/curses/leaveok.c
$(OBJDIR)/leaveok.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/leaveok.c
