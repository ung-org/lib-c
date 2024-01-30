libc_C.199409: libc.a(wmemset.o)
libc.a(wmemset.o): $(OBJDIR)/wmemset.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/wmemset.o: src/wchar/wmemset.c
$(OBJDIR)/wmemset.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/wchar/wmemset.c
