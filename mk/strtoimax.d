libc_C.199901: libc.a(strtoimax.o)
libc.a(strtoimax.o): $(OBJDIR)/strtoimax.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/strtoimax.o: src/inttypes/strtoimax.c
$(OBJDIR)/strtoimax.o: src/_safety.h
$(OBJDIR)/strtoimax.o: src/stdlib/_strtoi.h
$(OBJDIR)/strtoimax.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/inttypes/strtoimax.c
