libc_C.199901: libc.a(wcstoimax.o)
libc.a(wcstoimax.o): $(OBJDIR)/wcstoimax.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/wcstoimax.o: src/inttypes/wcstoimax.c
$(OBJDIR)/wcstoimax.o: src/stdlib/_strtoi.h
$(OBJDIR)/wcstoimax.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/inttypes/wcstoimax.c
