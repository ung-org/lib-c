libc_C.199901: libc.a(strtoumax.o)
libc.a(strtoumax.o): $(OBJDIR)/strtoumax.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/strtoumax.o: src/inttypes/strtoumax.c
$(OBJDIR)/strtoumax.o: src/_safety.h
$(OBJDIR)/strtoumax.o: src/stdlib/_strtoi.h
$(OBJDIR)/strtoumax.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/inttypes/strtoumax.c
