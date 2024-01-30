libm_C.199901: libm.a(catan.o)
libm.a(catan.o): $(OBJDIR)/catan.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/catan.o: src/complex/catan.c
$(OBJDIR)/catan.o: src/complex/_tgmath.h
$(OBJDIR)/src/math/_tgmath.h.o: 
$(OBJDIR)/catan.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/complex/catan.c
