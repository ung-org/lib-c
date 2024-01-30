libc_C.199409: libc.a(wcscspn.o)
libc.a(wcscspn.o): $(OBJDIR)/wcscspn.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/wcscspn.o: src/wchar/wcscspn.c
$(OBJDIR)/wcscspn.o: src/_safety.h
$(OBJDIR)/wcscspn.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/wchar/wcscspn.c
