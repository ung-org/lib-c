libc_C.201112: libc.a(c32rtomb.o)
libc.a(c32rtomb.o): $(OBJDIR)/c32rtomb.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/c32rtomb.o: src/uchar/c32rtomb.c
$(OBJDIR)/c32rtomb.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/uchar/c32rtomb.c
