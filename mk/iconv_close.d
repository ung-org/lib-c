libc_P.200809: libc.a(iconv_close.o)
libc_X.4: libc.a(iconv_close.o)
libc.a(iconv_close.o): $(OBJDIR)/iconv_close.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/iconv_close.o: src/iconv/iconv_close.c
$(OBJDIR)/iconv_close.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/iconv/iconv_close.c
