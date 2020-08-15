libc_X.4: libc.a(hcreate.o)
libc.a(hcreate.o): $(OBJDIR)/hcreate.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/hcreate.o: src/search/hcreate.c
$(OBJDIR)/hcreate.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/search/hcreate.c
