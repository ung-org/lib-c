libc_C.199409: libc.a(wctob.o)
libc.a(wctob.o): $(OBJDIR)/wctob.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/wctob.o: src/wchar/wctob.c
$(OBJDIR)/wctob.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/wchar/wctob.c
