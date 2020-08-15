libc_X.4: libc.a(tempnam.o)
libc.a(tempnam.o): $(OBJDIR)/tempnam.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/tempnam.o: src/stdio/tempnam.c
$(OBJDIR)/tempnam.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/stdio/tempnam.c
