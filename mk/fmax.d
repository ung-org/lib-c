libm_C.199901: libm.a(fmax.o)
libm.a(fmax.o): $(OBJDIR)/fmax.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/fmax.o: src/math/fmax.c
$(OBJDIR)/fmax.o: src/complex/_tgmath.h
$(OBJDIR)/src/math/_tgmath.h.o: 
$(OBJDIR)/fmax.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/math/fmax.c
