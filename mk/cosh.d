libm_C.1: libm.a(cosh.o)
libm.a(cosh.o): $(OBJDIR)/cosh.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/cosh.o: src/math/cosh.c
$(OBJDIR)/cosh.o: src/complex/_tgmath.h
$(OBJDIR)/src/math/_tgmath.h.o: 
$(OBJDIR)/cosh.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/math/cosh.c
