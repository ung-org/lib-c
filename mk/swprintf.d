libc_C.199409: libc.a(swprintf.o)
libc.a(swprintf.o): $(OBJDIR)/swprintf.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/swprintf.o: src/wchar/swprintf.c
$(OBJDIR)/swprintf.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/wchar/swprintf.c
