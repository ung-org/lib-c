libc_P.200809: libc.a(iconv_open.o)
libc_X.4: libc.a(iconv_open.o)
libc.a(iconv_open.o): $(OBJDIR)/iconv_open.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/iconv_open.o: src/iconv/iconv_open.c
$(OBJDIR)/iconv_open.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/iconv/iconv_open.c
