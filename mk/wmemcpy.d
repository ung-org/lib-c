libc_C.199409: libc.a(wmemcpy.o)
libc.a(wmemcpy.o): $(OBJDIR)/wmemcpy.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/wmemcpy.o: src/wchar/wmemcpy.c
$(OBJDIR)/wmemcpy.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/wchar/wmemcpy.c
