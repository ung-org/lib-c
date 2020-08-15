libc_X.400: libc.a(getutxent.o)
libc.a(getutxent.o): $(OBJDIR)/getutxent.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/getutxent.o: src/utmpx/getutxent.c
$(OBJDIR)/getutxent.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/utmpx/getutxent.c
