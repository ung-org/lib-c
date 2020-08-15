libcurses_X.400: libcurses.a(putp.o)
libcurses.a(putp.o): $(OBJDIR)/putp.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/putp.o: src/term/putp.c
$(OBJDIR)/putp.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/term/putp.c
