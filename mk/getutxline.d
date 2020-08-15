libc_X.400: libc.a(getutxline.o)
libc.a(getutxline.o): $(OBJDIR)/getutxline.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/getutxline.o: src/utmpx/getutxline.c
$(OBJDIR)/getutxline.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/utmpx/getutxline.c
