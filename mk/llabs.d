libc_C.199901: libc.a(llabs.o)
libc.a(llabs.o): $(OBJDIR)/llabs.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/llabs.o: src/stdlib/llabs.c
$(OBJDIR)/llabs.o: src/stdlib/_stdlib.h
$(OBJDIR)/llabs.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/stdlib/llabs.c
