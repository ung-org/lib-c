libc_C.199409: libc.a(vfwprintf.o)
libc.a(vfwprintf.o): $(OBJDIR)/vfwprintf.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/vfwprintf.o: src/wchar/vfwprintf.c
$(OBJDIR)/vfwprintf.o: src/stdio/_stdio.h
$(OBJDIR)/vfwprintf.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/wchar/vfwprintf.c
