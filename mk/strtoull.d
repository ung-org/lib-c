libc_C.199901: libc.a(strtoull.o)
libc.a(strtoull.o): $(OBJDIR)/strtoull.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/strtoull.o: src/stdlib/strtoull.c
$(OBJDIR)/strtoull.o: src/stdlib/_strtoi.h
$(OBJDIR)/strtoull.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/stdlib/strtoull.c
