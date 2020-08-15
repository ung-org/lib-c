libcurses_X.4: libcurses.a(unctrl.o)
libcurses.a(unctrl.o): $(OBJDIR)/unctrl.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/unctrl.o: src/unctrl/unctrl.c
$(OBJDIR)/unctrl.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/unctrl/unctrl.c
