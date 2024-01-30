libc_C.1: libc.a(labs.o)
libc.a(labs.o): $(OBJDIR)/labs.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/labs.o: src/stdlib/labs.c
$(OBJDIR)/labs.o: src/stdlib/_stdlib.h
$(OBJDIR)/labs.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/stdlib/labs.c
