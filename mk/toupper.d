libc_C.1: libc.a(toupper.o)
libc.a(toupper.o): $(OBJDIR)/toupper.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/toupper.o: src/ctype/toupper.c
$(OBJDIR)/toupper.o: src/ctype/_ctype.h
$(OBJDIR)/toupper.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/ctype/toupper.c
