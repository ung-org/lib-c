libc_C.199409: libc.a(fgetwc.o)
libc.a(fgetwc.o): $(OBJDIR)/fgetwc.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/fgetwc.o: src/wchar/fgetwc.c
$(OBJDIR)/fgetwc.o: src/stdio/_stdio.h
$(OBJDIR)/fgetwc.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/wchar/fgetwc.c
