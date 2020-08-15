libcurses_X.400: libcurses.a(tigetflag.o)
libcurses.a(tigetflag.o): $(OBJDIR)/tigetflag.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/tigetflag.o: src/term/tigetflag.c
$(OBJDIR)/tigetflag.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/term/tigetflag.c
