libm_C.199901: libm.a(nan.o)
libm.a(nan.o): $(OBJDIR)/nan.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/nan.o: src/math/nan.c
$(OBJDIR)/nan.o: src/complex/_tgmath.h
$(OBJDIR)/src/math/_tgmath.h.o: 
$(OBJDIR)/nan.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/math/nan.c
