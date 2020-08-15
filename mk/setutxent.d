libc_X.400: libc.a(setutxent.o)
libc.a(setutxent.o): $(OBJDIR)/setutxent.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/setutxent.o: src/utmpx/setutxent.c
$(OBJDIR)/setutxent.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/utmpx/setutxent.c
