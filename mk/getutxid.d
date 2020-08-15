libc_X.400: libc.a(getutxid.o)
libc.a(getutxid.o): $(OBJDIR)/getutxid.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/getutxid.o: src/utmpx/getutxid.c
$(OBJDIR)/getutxid.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/utmpx/getutxid.c
