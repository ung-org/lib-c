libc_X.400: libc.a(getdate.o)
libc.a(getdate.o): $(OBJDIR)/getdate.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/getdate.o: src/time/getdate.c
$(OBJDIR)/getdate.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/time/getdate.c
