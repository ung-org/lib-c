libcurses_X.400: libcurses.a(qiflush.o)
libcurses.a(qiflush.o): $(OBJDIR)/qiflush.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/qiflush.o: src/curses/qiflush.c
$(OBJDIR)/qiflush.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/qiflush.c
