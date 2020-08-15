libc_X.400: libc.a(nftw.o)
libc.a(nftw.o): $(OBJDIR)/nftw.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/nftw.o: src/ftw/nftw.c
$(OBJDIR)/nftw.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/ftw/nftw.c
