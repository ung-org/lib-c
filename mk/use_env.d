libcurses_X.400: libcurses.a(use_env.o)
libcurses.a(use_env.o): $(OBJDIR)/use_env.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/use_env.o: src/curses/use_env.c
$(OBJDIR)/use_env.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/curses/use_env.c
