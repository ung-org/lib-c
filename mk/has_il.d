libcurses_X.4: libcurses.a(has_il.o)
libcurses.a(has_il.o): $(OBJDIR)/has_il.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/has_il.o: src/curses/has_il.c
$(OBJDIR)/has_il.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/has_il.c
