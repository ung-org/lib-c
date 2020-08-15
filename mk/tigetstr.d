libcurses_X.400: libcurses.a(tigetstr.o)
libcurses.a(tigetstr.o): $(OBJDIR)/tigetstr.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/tigetstr.o: src/term/tigetstr.c
$(OBJDIR)/tigetstr.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/term/tigetstr.c
