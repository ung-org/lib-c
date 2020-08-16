libc_C.201112: libc.a(c16rtomb.o)
libc.a(c16rtomb.o): $(OBJDIR)/c16rtomb.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/c16rtomb.o: src/uchar/c16rtomb.c
$(OBJDIR)/c16rtomb.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/uchar/c16rtomb.c
