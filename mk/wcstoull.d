libc_C.199901: libc.a(wcstoull.o)
libc.a(wcstoull.o): $(OBJDIR)/wcstoull.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/wcstoull.o: src/wchar/wcstoull.c
$(OBJDIR)/wcstoull.o: src/stdlib/_strtoi.h
$(OBJDIR)/wcstoull.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/wchar/wcstoull.c
