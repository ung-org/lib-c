libc_C.199409: libc.a(wcsncat.o)
libc.a(wcsncat.o): $(OBJDIR)/wcsncat.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/wcsncat.o: src/wchar/wcsncat.c
$(OBJDIR)/wcsncat.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/wchar/wcsncat.c
