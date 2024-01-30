libc_C.199409: libc.a(wmemchr.o)
libc.a(wmemchr.o): $(OBJDIR)/wmemchr.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/wmemchr.o: src/wchar/wmemchr.c
$(OBJDIR)/wmemchr.o: src/_safety.h
$(OBJDIR)/wmemchr.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/wchar/wmemchr.c
