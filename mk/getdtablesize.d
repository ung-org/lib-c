libc_X.400: libc.a(getdtablesize.o)
libc.a(getdtablesize.o): $(OBJDIR)/getdtablesize.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/getdtablesize.o: src/unistd/getdtablesize.c
$(OBJDIR)/getdtablesize.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/unistd/getdtablesize.c
