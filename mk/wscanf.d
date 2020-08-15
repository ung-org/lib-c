libc_C.199409: libc.a(wscanf.o)
libc.a(wscanf.o): $(OBJDIR)/wscanf.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/wscanf.o: src/wchar/wscanf.c
$(OBJDIR)/wscanf.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/wchar/wscanf.c
