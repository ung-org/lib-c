libm_C.199901: libm.a(copysign.o)
libm.a(copysign.o): $(OBJDIR)/copysign.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/copysign.o: src/math/copysign.c
$(OBJDIR)/copysign.o: src/complex/_tgmath.h
$(OBJDIR)/src/math/_tgmath.h.o: 
$(OBJDIR)/copysign.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/math/copysign.c
