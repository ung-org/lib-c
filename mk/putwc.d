libc_C.199409: libc.a(putwc.o)
libc.a(putwc.o): $(OBJDIR)/putwc.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/putwc.o: src/wchar/putwc.c
$(OBJDIR)/putwc.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/wchar/putwc.c
