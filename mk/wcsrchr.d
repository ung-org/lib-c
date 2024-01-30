libc_C.199409: libc.a(wcsrchr.o)
libc.a(wcsrchr.o): $(OBJDIR)/wcsrchr.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/wcsrchr.o: src/wchar/wcsrchr.c
$(OBJDIR)/wcsrchr.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/wchar/wcsrchr.c
