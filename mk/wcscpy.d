libc_C.199409: libc.a(wcscpy.o)
libc.a(wcscpy.o): $(OBJDIR)/wcscpy.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/wcscpy.o: src/wchar/wcscpy.c
$(OBJDIR)/wcscpy.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/wchar/wcscpy.c
