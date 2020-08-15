libc_P.200809: libc.a(iconv.o)
libc_X.4: libc.a(iconv.o)
libc.a(iconv.o): $(OBJDIR)/iconv.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/iconv.o: src/iconv/iconv.c
$(OBJDIR)/iconv.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/iconv/iconv.c
