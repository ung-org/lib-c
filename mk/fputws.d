libc_C.199409: libc.a(fputws.o)
libc.a(fputws.o): $(OBJDIR)/fputws.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/fputws.o: src/wchar/fputws.c
$(OBJDIR)/fputws.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/wchar/fputws.c
