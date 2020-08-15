libc_C.199409: libc.a(wcsncmp.o)
libc.a(wcsncmp.o): $(OBJDIR)/wcsncmp.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/wcsncmp.o: src/wchar/wcsncmp.c
$(OBJDIR)/wcsncmp.o: src/_assert.h
$(OBJDIR)/wcsncmp.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/wchar/wcsncmp.c
