libm_C.199901: libm.a(cimag.o)
libm.a(cimag.o): $(OBJDIR)/cimag.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/cimag.o: src/complex/cimag.c
$(OBJDIR)/cimag.o: src/complex/_tgmath.h
$(OBJDIR)/src/math/_tgmath.h.o: 
$(OBJDIR)/cimag.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/complex/cimag.c
