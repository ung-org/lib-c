libcurses_X.4: libcurses.a(longname.o)
libcurses.a(longname.o): $(OBJDIR)/longname.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/longname.o: src/curses/longname.c
$(OBJDIR)/longname.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/longname.c
