libcurses_X.400: libcurses.a(tputs.o)
libcurses.a(tputs.o): $(OBJDIR)/tputs.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/tputs.o: src/term/tputs.c
$(OBJDIR)/tputs.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/term/tputs.c
