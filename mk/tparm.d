libcurses_X.400: libcurses.a(tparm.o)
libcurses.a(tparm.o): $(OBJDIR)/tparm.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/tparm.o: src/term/tparm.c
$(OBJDIR)/tparm.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/term/tparm.c
