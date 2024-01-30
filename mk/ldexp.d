libm_C.1: libm.a(ldexp.o)
libm.a(ldexp.o): $(OBJDIR)/ldexp.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/ldexp.o: src/math/ldexp.c
$(OBJDIR)/ldexp.o: src/complex/_tgmath.h
$(OBJDIR)/src/math/_tgmath.h.o: 
$(OBJDIR)/ldexp.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/math/ldexp.c
