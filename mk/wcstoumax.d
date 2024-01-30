libc_C.199901: libc.a(wcstoumax.o)
libc.a(wcstoumax.o): $(OBJDIR)/wcstoumax.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/wcstoumax.o: src/inttypes/wcstoumax.c
$(OBJDIR)/wcstoumax.o: src/_safety.h
$(OBJDIR)/wcstoumax.o: src/stdlib/_strtoi.h
$(OBJDIR)/wcstoumax.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/inttypes/wcstoumax.c
