libc_C.199409: libc.a(putwchar.o)
libc.a(putwchar.o): $(OBJDIR)/putwchar.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/putwchar.o: src/wchar/putwchar.c
$(OBJDIR)/putwchar.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/wchar/putwchar.c
