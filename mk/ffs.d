libc_X.400: libc.a(ffs.o)
libc.a(ffs.o): $(OBJDIR)/ffs.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/ffs.o: src/strings/ffs.c
$(OBJDIR)/ffs.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/strings/ffs.c
