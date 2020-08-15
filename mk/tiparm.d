libcurses_X.400: libcurses.a(tiparm.o)
libcurses.a(tiparm.o): $(OBJDIR)/tiparm.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/tiparm.o: src/term/tiparm.c
$(OBJDIR)/tiparm.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/term/tiparm.c
