libc_C.1: libc.a(strtoul.o)
libc.a(strtoul.o): $(OBJDIR)/strtoul.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/strtoul.o: src/stdlib/strtoul.c
$(OBJDIR)/strtoul.o: src/stdlib/_stdlib.h
$(OBJDIR)/strtoul.o: src/stdlib/_strtoi.h
$(OBJDIR)/strtoul.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/stdlib/strtoul.c
