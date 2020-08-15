libcurses_X.400: libcurses.a(color_content.o)
libcurses.a(color_content.o): $(OBJDIR)/color_content.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/color_content.o: src/curses/color_content.c
$(OBJDIR)/color_content.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/color_content.c
