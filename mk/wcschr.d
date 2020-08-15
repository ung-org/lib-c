libc_C.199409: libc.a(wcschr.o)
libc.a(wcschr.o): $(OBJDIR)/wcschr.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/wcschr.o: src/wchar/wcschr.c
$(OBJDIR)/wcschr.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/wchar/wcschr.c
