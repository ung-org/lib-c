libc_X.400: libc.a(getdate_err.o)
libc.a(getdate_err.o): $(OBJDIR)/getdate_err.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/getdate_err.o: src/time/getdate_err.c
$(OBJDIR)/getdate_err.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/time/getdate_err.c
