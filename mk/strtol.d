libc_C.1: libc.a(strtol.o)
libc.a(strtol.o): $(OBJDIR)/strtol.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/strtol.o: src/stdlib/strtol.c
$(OBJDIR)/strtol.o: src/stdlib/_stdlib.h
$(OBJDIR)/strtol.o: src/stdlib/_strtoi.h
$(OBJDIR)/strtol.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/stdlib/strtol.c
