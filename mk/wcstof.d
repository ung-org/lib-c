libc_C.199901: libc.a(wcstof.o)
libc.a(wcstof.o): $(OBJDIR)/wcstof.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/wcstof.o: src/wchar/wcstof.c
$(OBJDIR)/wcstof.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/wchar/wcstof.c
