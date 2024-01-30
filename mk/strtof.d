libc_C.199901: libc.a(strtof.o)
libc.a(strtof.o): $(OBJDIR)/strtof.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/strtof.o: src/stdlib/strtof.c
$(OBJDIR)/strtof.o: src/stdlib/_stdlib.h
$(OBJDIR)/strtof.o: src/stdlib/_strtod.h
$(OBJDIR)/strtof.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/stdlib/strtof.c
