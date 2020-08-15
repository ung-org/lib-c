libc_C.199409: libc.a(wcscoll.o)
libc.a(wcscoll.o): $(OBJDIR)/wcscoll.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/wcscoll.o: src/wchar/wcscoll.c
$(OBJDIR)/wcscoll.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/wchar/wcscoll.c
