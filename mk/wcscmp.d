libc_C.199409: libc.a(wcscmp.o)
libc.a(wcscmp.o): $(OBJDIR)/wcscmp.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/wcscmp.o: src/wchar/wcscmp.c
$(OBJDIR)/wcscmp.o: src/_safety.h
$(OBJDIR)/wcscmp.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/wchar/wcscmp.c
