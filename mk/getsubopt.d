libc_P.200809: libc.a(getsubopt.o)
libc_X.400: libc.a(getsubopt.o)
libc.a(getsubopt.o): $(OBJDIR)/getsubopt.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/getsubopt.o: src/stdlib/getsubopt.c
$(OBJDIR)/getsubopt.o: src/stdlib/_stdlib.h
$(OBJDIR)/getsubopt.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/stdlib/getsubopt.c
