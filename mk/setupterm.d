libcurses_X.400: libcurses.a(setupterm.o)
libcurses.a(setupterm.o): $(OBJDIR)/setupterm.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/setupterm.o: src/term/setupterm.c
$(OBJDIR)/setupterm.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/term/setupterm.c
