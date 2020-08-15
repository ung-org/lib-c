libcurses_X.400: libcurses.a(cur_term.o)
libcurses.a(cur_term.o): $(OBJDIR)/cur_term.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/cur_term.o: src/term/cur_term.c
$(OBJDIR)/cur_term.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/term/cur_term.c
