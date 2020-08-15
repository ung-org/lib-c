libcurses_X.4: libcurses.a(overwrite.o)
libcurses.a(overwrite.o): $(OBJDIR)/overwrite.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/overwrite.o: src/curses/overwrite.c
$(OBJDIR)/overwrite.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/overwrite.c
